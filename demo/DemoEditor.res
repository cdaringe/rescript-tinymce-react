@react.component
let make = () => {
  let editor = React.useRef(None)
  <TinyMCEReact.Editor
    onInit={(_, e) => editor.current = Some(e)}
    initialValue="<p>This is the initial content of the editor.</p>"
    init={TinyMCEReact.initConfig(
      ~height=500,
      ~menubar=false,
      ~plugins=[
        // "advlist",
        // "autolink",
        // "lists",
        // "link",
        "image",
        "charmap",
        "anchor",
        "searchreplace",
        "visualblocks",
        "code",
        "fullscreen",
        "insertdatetime",
        "media",
        "table",
        "preview",
        "help",
        "wordcount",
        "textpattern",
      ],
      ~toolbar="undo redo | blocks | bold italic forecolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help",
      ~content_style="body { font-family:Helvetica,Arial,sans-serif; font-size:14px }",
      (),
    )}
    tinymceScriptSrc="/tinymce/tinymce.min.js"
  />
}
