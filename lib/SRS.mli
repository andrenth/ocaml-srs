type t

exception SRS_error of string

val create : unit -> t
val add_secret : t -> string -> unit
val forward : t -> string -> string -> string
val reverse : t -> string -> string
val set_separator : t -> char -> unit
val get_separator : t -> char
val set_max_age : t -> int -> unit
val get_max_age : t -> int
val set_hash_length : t -> int -> unit
val get_hash_length : t -> int
val set_hash_min : t -> int -> unit
val get_hash_min : t -> int
val set_no_forward : t -> bool -> unit
val get_no_forward : t -> bool
val set_no_reverse : t -> bool -> unit
val get_no_reverse : t -> bool

val make : string list -> int -> int -> char -> t
