# OUTPUT TSV
# Concept by Mike Fanning
foreach($row in (Get-WinEvent Microsoft-Windows-TerminalServices-LocalSessionManager/Operational)) {
    $o = "" | Select-Object Message, Id, Version, Qualifiers, Level, Task, Opcode, Keywords, 
        RecordId, ProviderName, Logname, ProcessId, ThreadId, MachineName, UserId, TimeCreated, 
        ActivityId, RelatedActivityId, LevelDisplayName, OpcodeDisplayName, TaskDisplayName
    $o.Message           = $row.Message
    $o.Id                = $row.Id
    $o.Version           = $row.Version
    $o.Qualifiers        = $row.Qualifiers
    $o.Level             = $row.Level
    $o.Task              = $row.Task
    $o.Opcode            = $row.Opcode
    $o.Keywords          = $row.Keywords
    $o.RecordId          = $row.RecordId
    $o.ProviderName      = $row.ProviderName
    $o.LogName           = $row.LogName
    $o.ProcessId         = $row.ProcessId
    $o.ThreadId          = $row.ThreadId
    $o.MachineName       = $row.MachineName
    $o.UserId            = $row.UserId
    $o.TimeCreated       = $row.TimeCreated
    $o.ActivityId        = $row.ActivityId
    $o.RelatedActivityId = $row.RelatedActivityId
    $o.LevelDisplayName  = $row.LevelDisplayName
    $o.OpCodeDisplayName = $row.OpcodeDisplayName
    $o.TaskDisplayName   = $row.TaskDisplayName
    $o
}