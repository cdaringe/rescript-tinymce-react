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
      // ~textpattern_patterns=[
      //   TinyMCEReact.textpattern(~start="*", ~end="*", ~format="italic", ()),
      //   TinyMCEReact.textpattern(~start="**", ~end="**", ~format="bold", ()),
      //   TinyMCEReact.textpattern(~start="#", ~format="h1", ()),
      //   TinyMCEReact.textpattern(~start="##", ~format="h2", ()),
      //   TinyMCEReact.textpattern(~start="###", ~format="h3", ()),
      //   TinyMCEReact.textpattern(~start="####", ~format="h4", ()),
      //   TinyMCEReact.textpattern(~start="#####", ~format="h5", ()),
      //   TinyMCEReact.textpattern(~start="######", ~format="h6", ()),
      //   TinyMCEReact.textpattern(~start="1. ", ~cmd="InsertOrderedList", ()),
      //   TinyMCEReact.textpattern(~start="* ", ~cmd="InsertUnorderedList", ()),
      //   TinyMCEReact.textpattern(~start="- ", ~cmd="InsertUnorderedList", ()),
      // ],
      ~toolbar="undo redo | blocks | bold italic forecolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help",
      ~content_style="body { font-family:Helvetica,Arial,sans-serif; font-size:14px }",
      (),
    )}
    tinymceScriptSrc="/tinymce/tinymce.min.js"
  />
}
