function Get-RandomExtension {
    $extensions = @(
        ".txt", ".csv", ".log", ".md", ".json",
        ".docx", ".xlsx", ".pdf", ".png", ".jpg", 
        ".html", ".xml", ".pptx", ".zip", ".rtf"
    )
    return Get-Random -InputObject $extensions
}