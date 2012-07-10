type t

type separator
 = Plus
 | Minus
 | Equals

exception SRS_error of string

let _ = Callback.register_exception "SRS.SRS_error" (SRS_error "")

external create : unit -> t = "caml_srs_new"
external add_secret : t -> string -> unit = "caml_srs_add_secret"
external forward : t -> string -> string -> string = "caml_srs_forward"
external reverse : t -> string -> string = "caml_srs_forward"
external set_separator : t -> separator -> unit = "caml_srs_set_separator"
external get_separator : t -> separator = "caml_srs_get_separator"
external set_max_age : t -> int -> unit = "caml_srs_set_maxage"
external get_max_age : t -> int = "caml_srs_get_maxage"
external set_hash_length : t -> int -> unit = "caml_srs_set_hashlength"
external get_hash_length : t -> int = "caml_srs_get_hashlength"
external set_hash_min : t -> int -> unit = "caml_srs_set_hashmin"
external get_hash_min : t -> int = "caml_srs_get_hashmin"
external set_no_forward : t -> bool -> unit = "caml_srs_set_noforward"
external get_no_forward : t -> bool = "caml_srs_get_noforward"
external set_no_reverse : t -> bool -> unit = "caml_srs_set_noreverse"
external get_no_reverse : t -> bool = "caml_srs_get_noreverse"
