class Admin::EnemiesController < Admin::BaseController
  def index
    @enemies = Enemy.all
  end

  def new
    @enemy = Enemy.new
  end

  def create
    @enemy = Enemy.new(enemy_params)
    if @enemy.save
      redirect_to admin_enemies_path
    else
      render :new
    end
  end

  private

  def enemy_params
    params.require(:enemy).permit(:name, :health, :offense, :defense)
  end
end
