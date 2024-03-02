from cog import BasePredictor, Input, Path
import nemo.collections.asr as nemo_asr
import soundfile as sf

class Predictor(BasePredictor):
    def setup(self) -> None:
        """Load the model into memory to make running multiple predictions efficient"""
        self.model = nemo_asr.models.EncDecRNNTBPEModel.restore_from('stt_be_conformer_ctc_large.nemo')

    def predict(
        self,
        file: Path = Input(description="Audio file"),
    ) -> str:
        """Run a single prediction on the model"""
        audio_signal, sample_rate = sf.read(file)
        assert sample_rate == 16000, "Sample rate must be 16kHz!"
        transcriptions = self.model.transcribe(paths2audio_files=[str(file)])
        return transcriptions[0]
