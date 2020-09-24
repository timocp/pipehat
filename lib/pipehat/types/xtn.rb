# frozen_string_literal: true

Pipehat.define_type :XTN do
  component :telephone_number,                    :ST
  component :telecommunication_use_code,          :ID
  component :telecommunication_equipment_type,    :ID
  component :communication_address,               :ST
  component :country_code,                        :SNM
  component :area_city_code,                      :SNM
  component :local_number,                        :SNM
  component :extension,                           :SNM
  component :any_text,                            :ST
  component :extension_prefix,                    :ST
  component :speed_dial_code,                     :ST
  component :unformatted_telephone_number,        :ST
  component :effective_start_date,                :DTM
  component :expiration_date,                     :DTM
  component :expiration_reason,                   :CWE
  component :protection_code,                     :CWE
  component :shared_telecommunication_identifier, :EI
  component :preference_order,                    :NM
end
