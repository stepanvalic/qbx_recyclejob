local Translations = {
    success = {
        you_have_been_clocked_in = "Jste přihlášeni do práce",
    },
    text = {
        point_enter_warehouse = "[E] Vstoupit do skladiště",
        enter_warehouse = "Vstoupit do skladiště",
        exit_warehouse = "Opustit skladiště",
        point_exit_warehouse = "[E] Opustit skladiště",
        clock_out = "[E] Odhlásit se",
        clock_in = "[E] Přihlásit se",
        hand_in_package = "Odevzdat balíček",
        point_hand_in_package = "[E] Odevzdat balíček",
        get_package = "Získat balíček",
        point_get_package = "[E] Získat balíček",
        picking_up_the_package = "Zvedání balíčku",
        unpacking_the_package = "Rozbalování balíčku",
    },
    error = {
        you_have_clocked_out = "Jste odhlášeni",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})


if GetConvar('qb_locale', 'en') == 'cs' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
--translate by stepan_valic