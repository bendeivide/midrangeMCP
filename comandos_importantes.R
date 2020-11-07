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

badge_codecov(ghaccount = "bendeivide", ghrepo = "midrangeMCP", branch = "master")

