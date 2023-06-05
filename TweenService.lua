```
script.Event.Event:Connect(function(NotifyFrame, StartSize, StartDur, EndSize, EndDur, DebugTime)
	print("StartingTween at "..DebugTime)
	NotifyFrame:TweenSize(UDim2.new(1, 0, 0.1, 0))
	wait(StartDur)

	NotifyFrame:TweenSize(UDim2.new(0, 0, 0, 0))
	wait(EndDur)

	NotifyFrame:Destroy()
	print("FinishedTween at "..os.clock())
end)
```
