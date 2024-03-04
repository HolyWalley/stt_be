from cog import BasePredictor, Input, Path
import nemo.collections.asr as nemo_asr
import soundfile as sf
import subprocess
import os
import uuid

class Predictor(BasePredictor):
    def setup(self) -> None:
        """Load the model into memory to make running multiple predictions efficient"""
        self.model = nemo_asr.models.EncDecRNNTBPEModel.restore_from('stt_be_conformer_ctc_large.nemo')

    def predict(
        self,
        file: Path = Input(description="Audio file"),
    ) -> str:
        """Run a single prediction on the model"""
        os.makedirs("/tmp/outputs", exist_ok=True)

        output_path = f"/tmp/outputs/{str(uuid.uuid4())}.wav"
        # Convert to 16kHz
        command = [
            'ffmpeg',
            '-i', str(file), # Input file
            '-ac', '1', # Set audio channels to 1 (mono)
            '-ar', '16000',  # Set audio sample rate to 16000 Hz
            '-y',  # Overwrite output file if it exists
            output_path
        ]
        subprocess.run(command, check=True)

        transcriptions = self.model.transcribe(paths2audio_files=[output_path])
        os.remove(output_path)
        return transcriptions[0]
