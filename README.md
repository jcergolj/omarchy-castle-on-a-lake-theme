<p align="center">
  <img src="./preview.png" alt="Castle on a Lake in action" width="720" />
</p>

<h1 align="center">Castle on a Lake</h1>

<p align="center">
  <em>A warm, earthy dark theme for <a href="https://omarchy.org/">Omarchy</a> 4 (Quattro)</em>
</p>

<p align="center">
  <em>#dark · #art-theme · #landscapes · #day-night</em>
</p>

<p align="center">
  <img alt="For Omarchy" src="https://img.shields.io/badge/for-Omarchy%20Quattro-9b6b9f?style=for-the-badge" />
  <a href="#day--night-background-switching"><img alt="Day/Night" src="https://img.shields.io/badge/Day%2FNight-automatic%20background%20switch-9b6b9f?style=for-the-badge" /></a>
  <a href="https://opensource.org/licenses/MIT"><img alt="License: MIT" src="https://img.shields.io/github/license/shmall03/omarchy-castle-on-a-lake-theme?style=for-the-badge" /></a>
  <a href="https://github.com/shmall03/omarchy-castle-on-a-lake-theme"><img alt="GitHub stars" src="https://img.shields.io/github/stars/shmall03/omarchy-castle-on-a-lake-theme?style=for-the-badge" /></a>
  <a href="https://github.com/shmall03/omarchy-castle-on-a-lake-theme/fork"><img alt="GitHub forks" src="https://img.shields.io/github/forks/shmall03/omarchy-castle-on-a-lake-theme?style=for-the-badge" /></a>
  <a href="https://github.com/shmall03/omarchy-castle-on-a-lake-theme/graphs/contributors"><img alt="GitHub contributors" src="https://img.shields.io/github/contributors/shmall03/omarchy-castle-on-a-lake-theme?style=for-the-badge" /></a>
  <a href="https://github.com/shmall03/omarchy-castle-on-a-lake-theme"><img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/shmall03/omarchy-castle-on-a-lake-theme?style=for-the-badge" /></a>
  <a href="https://github.com/shmall03/omarchy-castle-on-a-lake-theme/commits/main"><img alt="Maintained" src="https://img.shields.io/badge/Maintained%3F-yes-green?style=for-the-badge" /></a>
  <a href="https://github.com/shmall03/omarchy-castle-on-a-lake-theme/releases"><img alt="GitHub release" src="https://img.shields.io/github/v/release/shmall03/omarchy-castle-on-a-lake-theme?style=for-the-badge" /></a>
</p>

<p align="center">
  Warm stone, firelight, sage, lake reflections, and twilight violet on a near-black canvas — a quiet, old-stone calm.
</p>

---

Named after the four castle images it ships with (two paintings, each in day
and night versions), the theme's palette is drawn directly from colors in the
paintings — sandstone, firelight, sage, lake reflections, storm sky, and
twilight violet — so every hue has a natural anchor in the artwork. And the
background **follows the sun**: it switches itself to the `-night` variant at
sunset and back at sunrise.

## Highlights

- **Day / night auto-switching backgrounds** — the wallpaper follows the sun
  (see [below](#day--night-background-switching))
- **Two castle paintings** by *Raphael Lacoste* — daytime and nighttime
  versions of two scenes
- **Wallpaper-derived palette** — every color drawn from the castle paintings:
  sandstone, firelight, sage, lake reflections, storm sky, twilight violet
- **Custom Neovim theme** — full highlight groups (editor, syntax, Treesitter,
  LSP, and popular plugins) built directly from the palette
- **Theme-guarded helper** — only acts while this theme is active
- **Whole-desktop coverage** — `colors.toml` themes the desktop, shell, and
  terminals; a bundled `neovim.lua` covers the editor with full highlight
  groups for syntax, Treesitter, LSP, and popular plugins

## Day / Night Background Switching

At sunset the background becomes the `-night` variant, and at sunrise it
switches back. The helper looks up real sunrise/sunset times for your location
every day — the location configured for the Omarchy weather panel, or detected
from your IP when none is set.

Install it (safe to re-run, nothing to configure):

```bash
bash ~/.config/omarchy/themes/castle-on-a-lake/daynight/install.sh
```

Remove it:

```bash
bash ~/.config/omarchy/themes/castle-on-a-lake/daynight/uninstall.sh
```

Notes:

- The helper is theme-guarded, so it only changes the background while the
  Castle On A Lake theme is active. A background picked manually via the
  switcher is left untouched.
- Requires network access for the daily sunrise/sunset lookup.
- A `post-boot` hook starts the daemon at login; its log lives at
  `~/.local/state/omarchy/bg-daynight-daemon.log`. Check it's running with
  `pgrep -f bg-daynight-daemon`.

## Installation

```bash
omarchy theme install https://github.com/shmall03/omarchy-castle-on-a-lake-theme.git
```

Or via the menu (**Super + Alt + Space** → **Install > Style > Theme**) — paste
the repo URL and press Enter.

Then apply it:

```bash
omarchy theme set castle-on-a-lake
```

Or pick it under **Style > Theme** in the menu.

## Wallpapers

| Artwork | Daytime | Nighttime |
|:---|:---|:---|
| **Castle on a Lake**<br>*Raphael Lacoste, via [wallhaven.cc/w/ogj6kp](https://wallhaven.cc/w/ogj6kp)* | <img src="./backgrounds/castle-on-a-lake.jpg" alt="Castle on a Lake" width="320" /> | <img src="./backgrounds/castle-on-a-lake-night.jpg" alt="Castle on a Lake at Night" width="320" /> |
| **Castle in Front of a Mountain**<br>*Raphael Lacoste, via [wallhaven.cc/w/jedy6p](https://wallhaven.cc/w/jedy6p)* | <img src="./backgrounds/castle-afront-a-mountain.jpg" alt="Castle in Front of a Mountain" width="320" /> | <img src="./backgrounds/castle-afront-a-mountain-night.jpg" alt="Castle in Front of a Mountain at Night" width="320" /> |

*Night versions derived from the originals with [ImageMagick](https://imagemagick.org) and [GIMP](https://www.gimp.org) — dimmer, cooler, moonlit contrast.*

## Color Palette

| Role | Swatch | Hex | Wallpaper source |
|:---|:---|:---|:---|
| Background | ![](https://placehold.co/48x20/060606/060606) | `#060606` | Deep night shadows |
| Dark background | ![](https://placehold.co/48x20/040404/040404) | `#040404` | Near-black canvas |
| Lighter background | ![](https://placehold.co/48x20/1f1f1e/1f1f1e) | `#1f1f1e` | Dim stone surface |
| Foreground | ![](https://placehold.co/48x20/f0d4e4/f0d4e4) | `#f0d4e4` | Cream text |
| Accent | ![](https://placehold.co/48x20/9b6b9f/9b6b9f) | `#9b6b9f` | Mauve identity |
| Muted | ![](https://placehold.co/48x20/626262/626262) | `#626262` | Weathered stone |
| Red | ![](https://placehold.co/48x20/a06048/a06048) | `#a06048` | Warm sandstone in sunset light |
| Yellow | ![](https://placehold.co/48x20/d4b060/d4b060) | `#d4b060` | Golden glow from lit windows |
| Orange | ![](https://placehold.co/48x20/c47838/c47838) | `#c47838` | Copper firelight |
| Green | ![](https://placehold.co/48x20/80a070/80a070) | `#80a070` | Sage from hillside vegetation |
| Cyan | ![](https://placehold.co/48x20/6090a0/6090a0) | `#6090a0` | Slate-teal from lake reflections |
| Blue | ![](https://placehold.co/48x20/5870a8/5870a8) | `#5870a8` | Storm blue from mountain sky |
| Magenta | ![](https://placehold.co/48x20/8060a0/8060a0) | `#8060a0` | Twilight violet from night sky |
| Brown | ![](https://placehold.co/48x20/5a4038/5a4038) | `#5a4038` | Dark castle stone |

## Theme Files

```
colors.toml       Color palette (wallpaper-derived)
neovim.lua        Custom Neovim colorscheme
backgrounds/      Wallpapers (day and night versions)
icons.theme       Yaru-wartybrown icons
daynight/         Day/night background switcher (see above)
unlock.png        Lock screen background
preview.png       Desktop preview
preview-unlock.png Lock screen preview
CHANGELOG.md      Version history
LICENSE           MIT license
```

## More from shmall03

**Media Lock Screen** — a companion Omarchy Quattro project that replaces the
built-in lock screen with one showing the currently playing track (MPRIS), a
large clock, and your user name, with separate password and fingerprint PAM
flows.

```bash
omarchy plugin add https://github.com/shmall03/omarchy-shmall.lock-plugin.git --enable
```

- [GitHub repo](https://github.com/shmall03/omarchy-shmall.lock-plugin)
- [omarchyplugins.com listing](https://omarchyplugins.com/plugin.html?id=shmall.lock)

## Contributing

Bugs, ideas, and tweaks are welcome — open an
[issue](https://github.com/shmall03/omarchy-castle-on-a-lake-theme/issues) or
[pull request](https://github.com/shmall03/omarchy-castle-on-a-lake-theme/pulls).

## License

The theme code — the color palette, Neovim theme, icon config, day/night
switcher scripts, and all other files except the artwork — is released under the
[MIT License](LICENSE), Copyright (c) 2026 Ben Smith.

The bundled wallpapers are digital paintings by
[Raphael Lacoste](https://www.artstation.com/raphael-lacoste), as tagged and
source-linked on [Wallhaven](https://wallhaven.cc). Per Wallhaven, *"all
images remain property of their original owners"* — they are **not** covered
by the MIT license and are included only for use with this theme. The night
versions are derivative edits made with [ImageMagick](https://imagemagick.org)
and [GIMP](https://www.gimp.org) and carry no separate license.

Redistributing the artwork, including the night versions, or creating further
derivatives requires the artist's permission. If you are the rights holder
and would like these images removed, open an issue and they will be taken
down.

## Acknowledgments

- [Raphael Lacoste](https://www.artstation.com/raphael-lacoste) — artist of
  the bundled wallpapers, as tagged and source-linked on
  [Wallhaven](https://wallhaven.cc)
  ([ogj6kp](https://wallhaven.cc/w/ogj6kp), [jedy6p](https://wallhaven.cc/w/jedy6p))
- [Omarchy](https://omarchy.org/) — the desktop this theme was made for
