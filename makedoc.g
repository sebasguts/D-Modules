LoadPackage("AutoDoc");

AutoDoc(
    "D-Modules",
    rec(
        #scaffold := false,  # TODO: Reconsider this?
        scaffold := rec(
            includes := [
                "intro.xml",
                "install.xml",
                "D-Modules.xml",
                "Tools.xml",
                "AutoDocMainFile.xml",
            ],
            appendix := [
                "appendix.xml",
            ],
            # TODO: Move TitlePage into PackageInfo.AutoDoc record
            TitlePage := rec(
                Subtitle := "D-Modules and special injective cogenerators",
                Acknowledgements := Concatenation(
                    "I would like to thank Professor Bernard Malgrange for inspiring\n",
                    "discussions. The notion InjectivePoints used at several places in\n",
                    "the package was suggested by Alban Quadrat in an e-mail\n",
                    "correspondence:\n",
                    "<Q>\n",
                    "  Otherwise, I do not know if you cannot play with the concepts of\n",
                    "  \"K-points\" and \"injective\" (e.g., D-Modules).\n",
                    "</Q>\n"
                ),
                Copyright := Concatenation(
                    "&copyright; 2008-2013 by Mohamed Barakat <P/>\n",
                    "\n",
                    "This package may be distributed under the terms and conditions of the\n",
                    "GNU Public License Version 2.\n"
                ),
            ),
        ),
        autodoc := rec(
                     files := [
                                "gap/D-ModulesForHomalg.gd",
                                "gap/D-ModulesForHomalg.gi",
                                "gap/DifferentialAction.gd",
                                "gap/DifferentialAction.gi",
                                "gap/D-Modules.gd",
                                "gap/D-Modules.gi",
                                "examples/doc/NumeratorOfDifferentialAction.g",
                                "examples/doc/CoefficientsOfAnnihilatingOperators.g",
                                "examples/doc/AnnihilatingOperators.g",
                                "examples/doc/BasisOfAnnihilatingOperators.g",
                                "examples/doc/OrderOfFirstEquality.g",
                              ]
                   ),    
        gapdoc := rec(
            main := "D-ModulesForHomalg",
        ),
        maketest := rec(
                    commands := [   "LoadPackage( \"D-Modules\" );",
                                    "LoadPackage( \"IO_ForHomalg\" );",
                                    "HOMALG_IO.show_banners := false;",
                                    "HOMALG_IO.use_common_stream := true;" ] )
    )
);

# Create VERSION file for "make towww"
PrintTo( "VERSION", PackageInfo( "D-Modules" )[1].Version );

QUIT;
