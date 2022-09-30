// @deriving(abstract)
// type textpattern = {
//   start: string,
//   @optional end: string,
//   @optional cmd: string,
//   @optional format: string,
// }

@deriving(abstract)
type initConfig = {
  @optional branding: bool,
  @optional height: int,
  @optional menubar: bool,
  @optional plugins: array<string>,
  @optional toolbar: string,
  @optional statusbar: bool,
  // @optional textpattern_patterns: array<textpattern>,
  @optional content_style: string,
}

module Editor = {
  type t
  @send external getContent: t => string = "getContent"
  // https://www.tiny.cloud/docs/tinymce/6/react-pm-bundle/
  @module("@tinymce/tinymce-react") @react.component
  external make: (
    ~apiKey: string=?,
    ~onInit: (unit, t) => unit=?,
    ~initialValue: string=?,
    ~init: initConfig=?,
    ~tinymceScriptSrc: string=?,
  ) => React.element = "Editor"
}
