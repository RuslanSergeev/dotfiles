return { 
	"f-person/git-blame.nvim", 
	branch="master",
	opts = {
	    enabled = false,
	    message_template = " <<sha>> • <date> • <author> • <summary>",
	    date_format = "%Y-%m-%d %H:%M:%S",
	    virtual_text_column = 1,
	}
}
