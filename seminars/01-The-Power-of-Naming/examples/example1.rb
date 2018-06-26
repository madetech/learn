class TrainManager
  def initialize(signals)
    @signals = signals
  end

  def slow(train)
    signal = @signals.next(train.sigid, train.dir) # next signal for the train
    signal.to(:slower)

    true
  end

  def stop(train)
    signal = @signals.next(train.sigid, train.dir) # next signal for the train
    signal.red

    true
  end
end
