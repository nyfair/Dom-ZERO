class ApplicationController < ActionController::Base
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'
    info do
      key :version, '1.0.0'
      key :title, 'API文档'
    end
    key :basePath, '/'
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end
  # A list of all classes that have swagger_* declarations.
  SWAGGERED_CLASSES = [
    self
  ].freeze
  def api
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end

  swagger_path '/hs' do
    operation :get do
      key :summary, '心跳检测'
      response 200 do
        key :description, '只会返回OK'
      end
    end
  end
  def holyshit
    render plain: "OK"
  end
end
