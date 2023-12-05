# § ¦ ¤ — • € ÷ þ ø

class Borders
    # region: Small
    def self.diamond
        "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>"
    end

    def self.equals
        "=============================================================="
    end

    def self.hash
        "##=##=##=##=##=##=##=##=##=##=##=##=##=##=##=##=##=##=##=##=##"
    end

    def self.jagged
        "^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^V^"
    end

    def self.jar
        "(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)"
    end

    def self.misc_1
        "-=/><\\=-=/><\\=-=/><\\=-=/><\\=-=/><\\=-=/><\\=-=/><\\=-=/><\\=-=/><\\=-"
    end

    def self.misc_2
        "-+*%$%*+-+*%$%*+-+*%$-+*%$%*+-+*%$%*+-+*%$-+*%$%*+-+*%$%*+-"
    end

    def self.nice
        "6969696969696969696969696969696969696969696969696969696969696"
    end

    def self.plus_minus
        "±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±"
    end

    def self.quotes
        '"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
    end

    def self.square
        "[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]"
    end

    def self.square_x
        "[x][x][x][x][x][x][x][x][x][x][x][x][x][x][x][x][x][x][x][x][x]"
    end

    def self.star
        "<*><*><*><*><*><*><*><*><*><*><*><*><*><*><*><*><*><*><*><*>"
    end

    def self.zig_zag
        '_/"-._/"-._/"-._/"-._/"-._/"-._/"-._/"-._/"-._/"-._/"-.'
    end

    # endregion


    # region: Medium
    def self.diamond_md
        <<-TEXT
/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\_/\\
\\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/ \\/
        TEXT
    end
    
    def self.jar_md
        <<-TEXT
 __  __  __  __  __  __  __  __  __  __  __  __  __  __  __  __
 )(  )(  )(  )(  )(  )(  )(  )(  )(  )(  )(  )(  )(  )(  )(  )(
(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)(__)
        TEXT
    end

    def self.fence
        <<-TEXT
¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
        TEXT
    end

    def self.explaination_md
        <<-TEXT
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
=============================================================
¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡
        TEXT
    end

    def self.yen_md
        <<-TEXT
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
        TEXT
    end

    def self.zig_zag_md
        <<-TEXT
 _    _    _    _    _    _    _    _    _    _    _
 \\"-._\\"-._\\"-._\\"-._\\"-._\\"-._\\"-._\\"-._\\"-._\\"-._\\"-._
"    "    "    "    "    "    "    "    "    "    "
       TEXT
    end



    # endregion


    # region: Large

    def self.dotted_lg
        <<-TEXT
  .--.      .--.      .--.      .--.      .--.      .--.      .--.      .--.
:::::.\\::::::::.\\::::::::.\\::::::::.\\::::::::.\\::::::::.\\::::::::.\\::::::::.\\
'      `--'      `.-'      `--'      `--'      `--'      `-.'      `--'      `
        TEXT
    end

    def self.jar_lg
        <<-TEXT
   __      __      __      __      __      __      __      __
 __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__
(      )(      )(      )(      )(      )(      )(      )(      )
"      ""      ""      ""      ""      ""      ""      ""      "
        TEXT
    end
    # endregion: Large




    @@small_borders = {
        "diamond" => Borders.diamond,
        "equals" => Borders.equals,
        "hash" => Borders.hash,
        "jagged" => Borders.jagged,
        "jar" => Borders.jar,
        "misc_1" => Borders.misc_1,
        "misc_2" => Borders.misc_2,
        "nice" => Borders.nice,
        "quotes" => Borders.quotes,
        "square" => Borders.square,
        "square_x" => Borders.square_x,
        "star" => Borders.star,
        "zig_zag" => Borders.zig_zag
    }

    @@medium_borders = {
        "diamond_md" => Borders.diamond_md,
        "explaination_md" => Borders.explaination_md,
        "jar_md" => Borders.jar_md,
        "zig_zag_md" => Borders.zig_zag_md,
        "yen_md" => "",

    }

    @@large_borders = {
        "dotted_lg" => Borders.dotted_lg,
        "jar_lg" => Borders.jar_lg,
        #"zig_zag_lg" => Borders.zig_zag_lg
    }


    def self.print_all
        all_borders = {
            "Small" => @@small_borders,
            "Medium" => @@medium_borders,
            "Large" => @@large_borders
        }

       all_borders.each do |category, border_data|
        main_border = Borders.equals
        puts ""
        puts main_border
        puts main_border
        puts category
        puts ""

        border_data.each do |border_name, ascii_art|
            puts ""
            puts border_name
            puts ascii_art
            puts ""
        end
        puts main_border
        puts main_border
        puts ""
       end
    end
end