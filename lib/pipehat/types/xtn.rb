# frozen_string_literal: true

Pipehat.define_type :XTN do
  add_component :telephone_number,                    :ST
  add_component :telecommunication_use_code,          :ID
  add_component :telecommunication_equipment_type,    :ID
  add_component :communication_address,               :ST
  add_component :country_code,                        :SNM
  add_component :area_city_code,                      :SNM
  add_component :local_number,                        :SNM
  add_component :extension,                           :SNM
  add_component :any_text,                            :ST
  add_component :extension_prefix,                    :ST
  add_component :speed_dial_code,                     :ST
  add_component :unformatted_telephone_number,        :ST
  add_component :effective_start_date,                :DTM
  add_component :expiration_date,                     :DTM
  add_component :expiration_reason,                   :CWE
  add_component :protection_code,                     :CWE
  add_component :shared_telecommunication_identifier, :EI
  add_component :preference_order,                    :NM
end
