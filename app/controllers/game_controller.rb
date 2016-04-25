class GameController <ApplicationController

  def rock
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move=="paper"
      result = "You lost!"
      @computer_image = "/assets/images/paper.png"
      @well_class = "label-danger"

    elsif @computer_move=="scissors"
      result = "You won!"
      @computer_image = "/assets/images/scissors.png"
      @well_class = "label-success"

    elsif @computer_move=="rock"
      result = "You tied!"
      @computer_image = "/assets/images/rock.png"
      @well_class = "label-warning"
    end
    @result = result
    @computer_move_display = @computer_move.capitalize
    render("rock.html.erb")
  end


  def paper
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move=="paper"
      result = "You tied!"
      @computer_image = "/assets/images/paper.png"
      @well_class = "label-warning"
    elsif @computer_move=="scissors"

      result = "You lost!"
      @computer_image = "/assets/images/scissors.png"
      @well_class = "label-danger"
    elsif @computer_move=="rock"
      result = "You won!"
      @computer_image = "/assets/images/rock.png"
      @well_class = "label-success"
    end
    @result = result
    @computer_move_display = @computer_move.capitalize
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move=="paper"
      result = "You won!"
      @computer_image = "/assets/images/paper.png"
      @well_class = "label-success"
    elsif @computer_move=="scissors"
      result = "You tied!"
      @computer_image = "/assets/images/scissors.png"
      @well_class = "label-warning"
    elsif @computer_move=="rock"
      result = "You lost!"
      @computer_image = "/assets/images/rock.png"
      @well_class = "label-danger"
    end
    @result = result
    @computer_move_display = @computer_move.capitalize
    render("scissors.html.erb")
  end

end
