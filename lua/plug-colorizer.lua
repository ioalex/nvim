-- Information
-- LAST UPDATED: 08/09/2020
--
-- _________        .__               .__
-- \_   ___ \  ____ |  |   ___________|__|_______ ___________
-- /    \  \/ /  _ \|  |  /  _ \_  __ \  \___   // __ \_  __ \
-- \     \___(  <_> )  |_(  <_> )  | \/  |/    /\  ___/|  | \/
--  \______  /\____/|____/\____/|__|  |__/_____ \\___  >__|
--         \/                                  \/    \/
--
--
--  Configuration file for Limelight.vim, "hyperfocus-writing in Vim".

require'colorizer'.setup(
  {'*';},
  {
    RGB      = true;         -- #RGB hex codes
	  RRGGBB   = true;         -- #RRGGBB hex codes
	  names    = true;         -- "Name" codes like Blue
	  RRGGBBAA = true;         -- #RRGGBBAA hex codes
	  rgb_fn   = true;         -- CSS rgb() and rgba() functions
	  hsl_fn   = true;         -- CSS hsl() and hsla() functions
	  css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	  css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
  })