return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		dashboard.section.header.val = {
			'          !:~~~ .:!M"T#$$$$WX??#MRRMMM!',
			'          ~?WuxiW*`   `"#$$$$8!!!!??!!!',
			'        :X- M$$$$       `"T#$T~!8$WUXU~',
			"       :%`  ~#$$$m:        ~!~ ?$$$$$$",
			'     :!`.-   ~T$$$$8xx.  .xWW- ~""##*"',
			"   -~~:<` !    ~?T#$$@@W@*?$$      /`",
			'!!! .!~~ !!     .:XUW$W!~ `"~:    :',
			".:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`",
			'!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~',
			' :X@!.-~   ?@WTWo("*$$$W$TH$! `    ⟋|､',
			'X$?!-~    : ?$$$B$Wu("**$RM!      (°､ ｡ 7',
			"~~ !     :   ~$$$$$B$$en:``       |､  ~ヽ",
			"W.~    :       ~##*$$$M~          じしf_,)〳",
		}
		alpha.setup(dashboard.opts)
    -- TODO Custom keys
	end,
}
