class TenantsController < ApplicationController

    def index 
        tenant = Tenant.all
        render json: tenant
    end

end
