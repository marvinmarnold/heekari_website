class InstallationDetail < ActiveRecord::Base
  belongs_to :home_type
  belongs_to :light_type

  def env_ins
    1
  end

  def env_mai
    2
  end

  def env_lif
    env_ins + env_mai
  end

  def tim_ins
    2
  end

  def tim_mai
    8
  end

  def tim_lif
    tim_ins + tim_mai
  end

  def mon_ins
    1000
  end

  def mon_mai
    5000
  end

  def mon_lif
    mon_ins + mon_mai
  end
end
