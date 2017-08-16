class SurveysController < ApplicationController

  def index
    @current_user = current_user
    if @current_user.position
    else
      @render = false
    end
    user_data = User.where(document: current_user.document)
    @user_positions = []
    user_data.each do |record|
      position = Position.find(record.position_id)
      @user_positions << position
    end
  end

  def show
    @pos_functions = fillPosFunctions
    if @pos_functions == []
      redirect_to action: :index
    end
  end

  def reset_responses
    @position = Position.find(params[:id])
    @position.functions.each do |function|
      @current_user.responses.each do |response|
        if response.function_id == function.id
          response.destroy
        end
      end
    end
    redirect_to action: :index
  end

  def create
    @pos_functions = fillPosFunctions
    @errors = []
    
    # Guardar las respuestas
    @pos_functions.each do |func|
      time_per_id = "time_per_#{func.id}"
      @response = Response.create(
        user_id:     current_user.id,
        function_id: func.id,
        time_per:    params[time_per_id]
      )
      if @response.save
        puts 'survey sent'
      else
        if @response.errors
          @response.errors.full_messages.each do |error|
            @errors << error
          end
          puts @errors
        end
      end
    end

    createExtraResponses

    redirect_to action: :index
  end

  private

  def fillPosFunctions
    @current_user = current_user
    @position = Position.find(params[:id])
    @pos_functions = []
    @total_per = 100
    @position.functions.each do |function|
      @pos_functions << function
      @current_user.responses.each do |response|
        if response.function_id == function.id
          @pos_functions.delete(function)
          @total_per = @total_per - response.time_per.to_i
        end
      end
    end
    @pos_functions
  end

  def createExtraResponses
    if params["time_per_1001"]
      function = Function.create(
        position: current_user.position,
        name: params["other_task_1001"],
        not_norm: 'f'
      )
      @response = Response.create(
        user_id:     current_user.id,
        function:    function,
        time_per:    params["time_per_1001"]
      )
    end
    if params["time_per_1002"]
      function = Function.create(
        position: current_user.position,
        name: params["other_task_1002"],
        not_norm: 'f'
      )
      @response = Response.create(
        user_id:     current_user.id,
        function:    function,
        time_per:    params["time_per_1002"]
      )
    end
    if params["time_per_1003"]
      function = Function.create(
        position: current_user.position,
        name: params["other_task_1003"],
        not_norm: 'f'
      )
      @response = Response.create(
        user_id:     current_user.id,
        function:    function,
        time_per:    params["time_per_1003"]
      )
    end
  end

end
