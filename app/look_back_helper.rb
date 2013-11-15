class LookBackHelper

  def initialize
    LookBack.setupWithAppToken("vA8LWzejyqc7eYbbj")
    LookBack.lookback.shakeToRecord = true
    return true
  end

end