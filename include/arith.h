#include "defines.h"

af_err af_add   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_sub   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_mul   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_div   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_lt    (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_gt    (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_le    (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_ge    (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_eq    (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_neq   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_and   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_or    (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_not   (af_array *out, const af_array in);
af_err af_bitand   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_bitor    (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_bitxor   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_bitshiftl(af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_bitshiftr(af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_cast    (af_array *out, const af_array in, const af_dtype type);
af_err af_minof (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_maxof (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_clamp(af_array *out, const af_array in, const af_array lo, const af_array hi, const bool batch);
af_err af_rem   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_mod   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_abs     (af_array *out, const af_array in);
af_err af_arg     (af_array *out, const af_array in);
af_err af_sign   (af_array *out, const af_array in);
af_err af_round   (af_array *out, const af_array in);
af_err af_trunc   (af_array *out, const af_array in);
af_err af_floor   (af_array *out, const af_array in);
af_err af_ceil    (af_array *out, const af_array in);
af_err af_hypot (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_sin     (af_array *out, const af_array in);
af_err af_cos     (af_array *out, const af_array in);
af_err af_tan     (af_array *out, const af_array in);
af_err af_asin    (af_array *out, const af_array in);
af_err af_acos    (af_array *out, const af_array in);
af_err af_atan    (af_array *out, const af_array in);
af_err af_atan2 (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_cplx2 (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_cplx    (af_array *out, const af_array in);
af_err af_real    (af_array *out, const af_array in);
af_err af_imag    (af_array *out, const af_array in);
af_err af_conjg   (af_array *out, const af_array in);
af_err af_sinh    (af_array *out, const af_array in);
af_err af_cosh    (af_array *out, const af_array in);
af_err af_tanh    (af_array *out, const af_array in);
af_err af_asinh   (af_array *out, const af_array in);
af_err af_acosh   (af_array *out, const af_array in);
af_err af_atanh   (af_array *out, const af_array in);
af_err af_root   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_pow   (af_array *out, const af_array lhs, const af_array rhs, const bool batch);
af_err af_pow2     (af_array *out, const af_array in);
af_err af_exp     (af_array *out, const af_array in);
af_err af_sigmoid (af_array *out, const af_array in);
af_err af_expm1   (af_array *out, const af_array in);
af_err af_erf     (af_array *out, const af_array in);
af_err af_erfc    (af_array *out, const af_array in);
af_err af_log     (af_array *out, const af_array in);
af_err af_log1p   (af_array *out, const af_array in);
af_err af_log10   (af_array *out, const af_array in);
af_err af_log2   (af_array *out, const af_array in);
af_err af_sqrt    (af_array *out, const af_array in);
af_err af_cbrt    (af_array *out, const af_array in);
af_err af_factorial   (af_array *out, const af_array in);
af_err af_tgamma   (af_array *out, const af_array in);
af_err af_lgamma   (af_array *out, const af_array in);
af_err af_iszero  (af_array *out, const af_array in);
af_err af_isinf   (af_array *out, const af_array in);
af_err af_isnan   (af_array *out, const af_array in);
