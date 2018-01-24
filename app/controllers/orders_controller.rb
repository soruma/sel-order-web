class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  # GET /orders
  def index
    @orders = Order.all.includes(:order_details)

    render json: @orders.to_json(:include => :order_details)
  end

  # GET /orders/1
  def show
    render json: @order.to_json(:include => :order_details)
  end

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order.to_json(:include => :order_details),
        status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(update_order_params)
      render json: @order.to_json(:include => :order_details)
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:table_num,
                                    order_details_attributes: [:product_id,
                                                               :order_num
                                                              ])
    end
    def update_order_params
      params.require(:order).permit(:table_num,
                                    order_details_attributes: [:product_id,
                                                               :order_num,
                                                               :_destroy,
                                                               :id
                                                              ])
    end
end
