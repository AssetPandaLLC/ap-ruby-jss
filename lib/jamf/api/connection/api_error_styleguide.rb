# Copyright ''

#
#    Licensed under the Apache License, Version 2.0 (the "Apache License")
#    with the following modification; you may not use this file except in
#    compliance with the Apache License and the following modification to it:
#    Section 6. Trademarks. is deleted and replaced with:
#
#    6. Trademarks. This License does not grant permission to use the trade
#       names, trademarks, service marks, or product names of the Licensor
#       and its affiliates, except as required to comply with Section 4(c) of
#       the License and to reproduce the content of the NOTICE file.
#
#    You may obtain a copy of the Apache License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the Apache License with the above modification is
#    distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#    KIND, either express or implied. See the Apache License for the specific
#    language governing permissions and limitations under the Apache License.
#
#

# The module
module Jamf

  # When the API returns an HTTP status other than 2xx or 3xx, the document body
  # contains one of these.
  #
  class APIError < Jamf::JSONObject

    OBJECT_MODEL = {

      # @!attribute [r] traceId
      #   @return [String]
      traceId: {
        class: :string,
        readonly: true
      },

      # @!attribute [r] errors
      #   @return [Array<Jamf::APIErrorDetail>]
      errors: {
        class: Jamf::APIErrorDetail,
        readonly: true,
        multi: true
      }

    }.freeze

    parse_object_model

  end # class APIError

  # an individual error report in an APIError object
  class APIErrorDetail < Jamf::JSONObject

    OBJECT_MODEL = {

      # @!attribute [r] objectId
      #   @return [String]
      objectId: {
        class: :string,
        readonly: true
      },

      # @!attribute [r] reasonCode
      #   @return [String]
      reasonCode: {
        class: :string,
        readonly: true
      },

      # @!attribute [r] field
      #   @return [String]
      field: {
        class: :string,
        readonly: true
      },

      # @!attribute [r] description
      #   @return [String]
      description: {
        class: :string,
        readonly: true
      }

    }.freeze

    parse_object_model

  end # class APIErrorDetail

end # module
