Wrapper around https://huggingface.co/nvidia/stt_be_conformer_ctc_large

To download model:
```bash
```bash
curl -L -O https://huggingface.co/nvidia/stt_be_conformer_ctc_large/resolve/main/stt_be_conformer_ctc_large.nemo?download=true
```

```bash
cog predict -i file=@audio.wav
```

Model on [replicate](https://replicate.com/holywalley/stt_be_ctc)
