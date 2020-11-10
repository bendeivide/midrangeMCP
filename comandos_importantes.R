# Comandos importantes

# Criacao dos badges
#devtools::install_github("rmhogervorst/badgecreatr")
badgeplacer(
                         status = "active",
                         githubaccount = "bendeivide",
                         githubrepo = "midrangeMCP"
                         )

# Criando a website do pacote
usethis::use_pkgdown() # Primeiro comando
pkgdown::build_site()

# Badge codcov
badge_codecov(ghaccount = "bendeivide", ghrepo = "midrangeMCP", branch = "master")


# Inserir funcoes ou arquivos no .Rbuildignore
usethis::use_build_ignore()

# Update cran-comments.md
usethis::use_cran_comments()

# Versao do pacote
usethis::use_release_issue()
# Current version is 3.2.
# Which part to increment? (0 to exit)
#
# 1: major --> 4.0
# 2: minor --> 3.3
# 3: patch --> 3.2.1
# 4:   dev --> 3.2.0.9000





