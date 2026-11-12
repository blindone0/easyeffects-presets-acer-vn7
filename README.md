# Easy Effects presets for Acer Aspire V Nitro (VN7)

Output presets for [Easy Effects](https://github.com/wwmm/easyeffects) (PipeWire) made for an Acer VN7 laptop with the Realtek ALC283 sound chip.

| Preset | Effects |
|---|---|
| `Acer VN7 Dolby` | bass enhancer, equalizer, stereo tools, compressor, multiband compressor, limiter |
| `Acer VN7 Dolby Original` | convolver (impulse response in `irs/`), multiband compressor, limiter |
| `Flat` | no effects |

`autoload/` makes Easy Effects load `Acer VN7 Dolby` for the laptop's built-in output (speakers and headphones).

## Install

```bash
./install.sh
```

It copies the files to `~/.config/easyeffects` and puts your home folder into the impulse-response path inside `Acer VN7 Dolby Original`.

## Note

The compressors in both "Dolby" presets make quiet, sharp sounds much louder. In speech recordings and some videos this is heard as clicks between words. If that bothers you, use `Flat` or switch Easy Effects to bypass.

"Dolby" in the preset names refers to the laptop's stock sound profile that the presets imitate. This repository is not affiliated with Dolby Laboratories.
