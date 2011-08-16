class SpreeKelkooHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_configurations_menu do
    %(<%= configurations_menu_item(t("kelkoo"), admin_kelkoo_path, t("kelkoo_description")) %>)
  end
end
