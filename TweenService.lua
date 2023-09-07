script.Event.Event:Connect(function(NotifyFrame, StartSize, StartDur, EndSize, EndDur, DebugTime)
	--print("StartingTween at "..DebugTime)
	--print(StartSize)
	NotifyFrame:TweenSize(StartSize)
	wait(StartDur)

	NotifyFrame:TweenSize(EndSize)
	wait(EndDur)

	NotifyFrame:Destroy()
	--print("FinishedTween at "..os.clock())
end)
