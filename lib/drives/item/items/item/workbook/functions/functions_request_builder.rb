require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/workbook_functions'
require_relative '../../../../../drives'
require_relative '../../../../item'
require_relative '../../../items'
require_relative '../../item'
require_relative '../workbook'
require_relative './functions'
require_relative './microsoft_graph_abs/microsoft_graph_abs_request_builder'
require_relative './microsoft_graph_accr_int/microsoft_graph_accr_int_request_builder'
require_relative './microsoft_graph_accr_int_m/microsoft_graph_accr_int_m_request_builder'
require_relative './microsoft_graph_acos/microsoft_graph_acos_request_builder'
require_relative './microsoft_graph_acosh/microsoft_graph_acosh_request_builder'
require_relative './microsoft_graph_acot/microsoft_graph_acot_request_builder'
require_relative './microsoft_graph_acoth/microsoft_graph_acoth_request_builder'
require_relative './microsoft_graph_amor_degrc/microsoft_graph_amor_degrc_request_builder'
require_relative './microsoft_graph_amor_linc/microsoft_graph_amor_linc_request_builder'
require_relative './microsoft_graph_and/microsoft_graph_and_request_builder'
require_relative './microsoft_graph_arabic/microsoft_graph_arabic_request_builder'
require_relative './microsoft_graph_areas/microsoft_graph_areas_request_builder'
require_relative './microsoft_graph_asc/microsoft_graph_asc_request_builder'
require_relative './microsoft_graph_asin/microsoft_graph_asin_request_builder'
require_relative './microsoft_graph_asinh/microsoft_graph_asinh_request_builder'
require_relative './microsoft_graph_atan/microsoft_graph_atan_request_builder'
require_relative './microsoft_graph_atan2/microsoft_graph_atan2_request_builder'
require_relative './microsoft_graph_atanh/microsoft_graph_atanh_request_builder'
require_relative './microsoft_graph_ave_dev/microsoft_graph_ave_dev_request_builder'
require_relative './microsoft_graph_average/microsoft_graph_average_request_builder'
require_relative './microsoft_graph_average_a/microsoft_graph_average_a_request_builder'
require_relative './microsoft_graph_average_if/microsoft_graph_average_if_request_builder'
require_relative './microsoft_graph_average_ifs/microsoft_graph_average_ifs_request_builder'
require_relative './microsoft_graph_baht_text/microsoft_graph_baht_text_request_builder'
require_relative './microsoft_graph_base/microsoft_graph_base_request_builder'
require_relative './microsoft_graph_bessel_i/microsoft_graph_bessel_i_request_builder'
require_relative './microsoft_graph_bessel_j/microsoft_graph_bessel_j_request_builder'
require_relative './microsoft_graph_bessel_k/microsoft_graph_bessel_k_request_builder'
require_relative './microsoft_graph_bessel_y/microsoft_graph_bessel_y_request_builder'
require_relative './microsoft_graph_beta_dist/microsoft_graph_beta_dist_request_builder'
require_relative './microsoft_graph_beta_inv/microsoft_graph_beta_inv_request_builder'
require_relative './microsoft_graph_bin2_dec/microsoft_graph_bin2_dec_request_builder'
require_relative './microsoft_graph_bin2_hex/microsoft_graph_bin2_hex_request_builder'
require_relative './microsoft_graph_bin2_oct/microsoft_graph_bin2_oct_request_builder'
require_relative './microsoft_graph_binom_dist/microsoft_graph_binom_dist_request_builder'
require_relative './microsoft_graph_binom_dist_range/microsoft_graph_binom_dist_range_request_builder'
require_relative './microsoft_graph_binom_inv/microsoft_graph_binom_inv_request_builder'
require_relative './microsoft_graph_bitand/microsoft_graph_bitand_request_builder'
require_relative './microsoft_graph_bitlshift/microsoft_graph_bitlshift_request_builder'
require_relative './microsoft_graph_bitor/microsoft_graph_bitor_request_builder'
require_relative './microsoft_graph_bitrshift/microsoft_graph_bitrshift_request_builder'
require_relative './microsoft_graph_bitxor/microsoft_graph_bitxor_request_builder'
require_relative './microsoft_graph_ceiling_math/microsoft_graph_ceiling_math_request_builder'
require_relative './microsoft_graph_ceiling_precise/microsoft_graph_ceiling_precise_request_builder'
require_relative './microsoft_graph_char/microsoft_graph_char_request_builder'
require_relative './microsoft_graph_chi_sq_dist/microsoft_graph_chi_sq_dist_request_builder'
require_relative './microsoft_graph_chi_sq_dist_r_t/microsoft_graph_chi_sq_dist_r_t_request_builder'
require_relative './microsoft_graph_chi_sq_inv/microsoft_graph_chi_sq_inv_request_builder'
require_relative './microsoft_graph_chi_sq_inv_r_t/microsoft_graph_chi_sq_inv_r_t_request_builder'
require_relative './microsoft_graph_choose/microsoft_graph_choose_request_builder'
require_relative './microsoft_graph_clean/microsoft_graph_clean_request_builder'
require_relative './microsoft_graph_code/microsoft_graph_code_request_builder'
require_relative './microsoft_graph_columns/microsoft_graph_columns_request_builder'
require_relative './microsoft_graph_combin/microsoft_graph_combin_request_builder'
require_relative './microsoft_graph_combina/microsoft_graph_combina_request_builder'
require_relative './microsoft_graph_complex/microsoft_graph_complex_request_builder'
require_relative './microsoft_graph_concatenate/microsoft_graph_concatenate_request_builder'
require_relative './microsoft_graph_confidence_norm/microsoft_graph_confidence_norm_request_builder'
require_relative './microsoft_graph_confidence_t/microsoft_graph_confidence_t_request_builder'
require_relative './microsoft_graph_convert/microsoft_graph_convert_request_builder'
require_relative './microsoft_graph_cos/microsoft_graph_cos_request_builder'
require_relative './microsoft_graph_cosh/microsoft_graph_cosh_request_builder'
require_relative './microsoft_graph_cot/microsoft_graph_cot_request_builder'
require_relative './microsoft_graph_coth/microsoft_graph_coth_request_builder'
require_relative './microsoft_graph_count/microsoft_graph_count_request_builder'
require_relative './microsoft_graph_count_a/microsoft_graph_count_a_request_builder'
require_relative './microsoft_graph_count_blank/microsoft_graph_count_blank_request_builder'
require_relative './microsoft_graph_count_if/microsoft_graph_count_if_request_builder'
require_relative './microsoft_graph_count_ifs/microsoft_graph_count_ifs_request_builder'
require_relative './microsoft_graph_coup_day_bs/microsoft_graph_coup_day_bs_request_builder'
require_relative './microsoft_graph_coup_days/microsoft_graph_coup_days_request_builder'
require_relative './microsoft_graph_coup_days_nc/microsoft_graph_coup_days_nc_request_builder'
require_relative './microsoft_graph_coup_ncd/microsoft_graph_coup_ncd_request_builder'
require_relative './microsoft_graph_coup_num/microsoft_graph_coup_num_request_builder'
require_relative './microsoft_graph_coup_pcd/microsoft_graph_coup_pcd_request_builder'
require_relative './microsoft_graph_csc/microsoft_graph_csc_request_builder'
require_relative './microsoft_graph_csch/microsoft_graph_csch_request_builder'
require_relative './microsoft_graph_cum_i_pmt/microsoft_graph_cum_i_pmt_request_builder'
require_relative './microsoft_graph_cum_princ/microsoft_graph_cum_princ_request_builder'
require_relative './microsoft_graph_date/microsoft_graph_date_request_builder'
require_relative './microsoft_graph_datevalue/microsoft_graph_datevalue_request_builder'
require_relative './microsoft_graph_daverage/microsoft_graph_daverage_request_builder'
require_relative './microsoft_graph_day/microsoft_graph_day_request_builder'
require_relative './microsoft_graph_days/microsoft_graph_days_request_builder'
require_relative './microsoft_graph_days360/microsoft_graph_days360_request_builder'
require_relative './microsoft_graph_db/microsoft_graph_db_request_builder'
require_relative './microsoft_graph_dbcs/microsoft_graph_dbcs_request_builder'
require_relative './microsoft_graph_dcount/microsoft_graph_dcount_request_builder'
require_relative './microsoft_graph_dcount_a/microsoft_graph_dcount_a_request_builder'
require_relative './microsoft_graph_ddb/microsoft_graph_ddb_request_builder'
require_relative './microsoft_graph_dec2_bin/microsoft_graph_dec2_bin_request_builder'
require_relative './microsoft_graph_dec2_hex/microsoft_graph_dec2_hex_request_builder'
require_relative './microsoft_graph_dec2_oct/microsoft_graph_dec2_oct_request_builder'
require_relative './microsoft_graph_decimal/microsoft_graph_decimal_request_builder'
require_relative './microsoft_graph_degrees/microsoft_graph_degrees_request_builder'
require_relative './microsoft_graph_delta/microsoft_graph_delta_request_builder'
require_relative './microsoft_graph_dev_sq/microsoft_graph_dev_sq_request_builder'
require_relative './microsoft_graph_dget/microsoft_graph_dget_request_builder'
require_relative './microsoft_graph_disc/microsoft_graph_disc_request_builder'
require_relative './microsoft_graph_dmax/microsoft_graph_dmax_request_builder'
require_relative './microsoft_graph_dmin/microsoft_graph_dmin_request_builder'
require_relative './microsoft_graph_dollar/microsoft_graph_dollar_request_builder'
require_relative './microsoft_graph_dollar_de/microsoft_graph_dollar_de_request_builder'
require_relative './microsoft_graph_dollar_fr/microsoft_graph_dollar_fr_request_builder'
require_relative './microsoft_graph_dproduct/microsoft_graph_dproduct_request_builder'
require_relative './microsoft_graph_dst_dev/microsoft_graph_dst_dev_request_builder'
require_relative './microsoft_graph_dst_dev_p/microsoft_graph_dst_dev_p_request_builder'
require_relative './microsoft_graph_dsum/microsoft_graph_dsum_request_builder'
require_relative './microsoft_graph_duration/microsoft_graph_duration_request_builder'
require_relative './microsoft_graph_dvar/microsoft_graph_dvar_request_builder'
require_relative './microsoft_graph_dvar_p/microsoft_graph_dvar_p_request_builder'
require_relative './microsoft_graph_ecma_ceiling/microsoft_graph_ecma_ceiling_request_builder'
require_relative './microsoft_graph_edate/microsoft_graph_edate_request_builder'
require_relative './microsoft_graph_effect/microsoft_graph_effect_request_builder'
require_relative './microsoft_graph_eo_month/microsoft_graph_eo_month_request_builder'
require_relative './microsoft_graph_erf/microsoft_graph_erf_request_builder'
require_relative './microsoft_graph_erf_c/microsoft_graph_erf_c_request_builder'
require_relative './microsoft_graph_erf_c_precise/microsoft_graph_erf_c_precise_request_builder'
require_relative './microsoft_graph_erf_precise/microsoft_graph_erf_precise_request_builder'
require_relative './microsoft_graph_error_type/microsoft_graph_error_type_request_builder'
require_relative './microsoft_graph_even/microsoft_graph_even_request_builder'
require_relative './microsoft_graph_exact/microsoft_graph_exact_request_builder'
require_relative './microsoft_graph_exp/microsoft_graph_exp_request_builder'
require_relative './microsoft_graph_expon_dist/microsoft_graph_expon_dist_request_builder'
require_relative './microsoft_graph_fact/microsoft_graph_fact_request_builder'
require_relative './microsoft_graph_fact_double/microsoft_graph_fact_double_request_builder'
require_relative './microsoft_graph_false/microsoft_graph_false_request_builder'
require_relative './microsoft_graph_find/microsoft_graph_find_request_builder'
require_relative './microsoft_graph_find_b/microsoft_graph_find_b_request_builder'
require_relative './microsoft_graph_fisher/microsoft_graph_fisher_request_builder'
require_relative './microsoft_graph_fisher_inv/microsoft_graph_fisher_inv_request_builder'
require_relative './microsoft_graph_fixed/microsoft_graph_fixed_request_builder'
require_relative './microsoft_graph_floor_math/microsoft_graph_floor_math_request_builder'
require_relative './microsoft_graph_floor_precise/microsoft_graph_floor_precise_request_builder'
require_relative './microsoft_graph_fv/microsoft_graph_fv_request_builder'
require_relative './microsoft_graph_fvschedule/microsoft_graph_fvschedule_request_builder'
require_relative './microsoft_graph_f_dist/microsoft_graph_f_dist_request_builder'
require_relative './microsoft_graph_f_dist_r_t/microsoft_graph_f_dist_r_t_request_builder'
require_relative './microsoft_graph_f_inv/microsoft_graph_f_inv_request_builder'
require_relative './microsoft_graph_f_inv_r_t/microsoft_graph_f_inv_r_t_request_builder'
require_relative './microsoft_graph_gamma/microsoft_graph_gamma_request_builder'
require_relative './microsoft_graph_gamma_ln/microsoft_graph_gamma_ln_request_builder'
require_relative './microsoft_graph_gamma_ln_precise/microsoft_graph_gamma_ln_precise_request_builder'
require_relative './microsoft_graph_gamma_dist/microsoft_graph_gamma_dist_request_builder'
require_relative './microsoft_graph_gamma_inv/microsoft_graph_gamma_inv_request_builder'
require_relative './microsoft_graph_gauss/microsoft_graph_gauss_request_builder'
require_relative './microsoft_graph_gcd/microsoft_graph_gcd_request_builder'
require_relative './microsoft_graph_geo_mean/microsoft_graph_geo_mean_request_builder'
require_relative './microsoft_graph_ge_step/microsoft_graph_ge_step_request_builder'
require_relative './microsoft_graph_har_mean/microsoft_graph_har_mean_request_builder'
require_relative './microsoft_graph_hex2_bin/microsoft_graph_hex2_bin_request_builder'
require_relative './microsoft_graph_hex2_dec/microsoft_graph_hex2_dec_request_builder'
require_relative './microsoft_graph_hex2_oct/microsoft_graph_hex2_oct_request_builder'
require_relative './microsoft_graph_hlookup/microsoft_graph_hlookup_request_builder'
require_relative './microsoft_graph_hour/microsoft_graph_hour_request_builder'
require_relative './microsoft_graph_hyperlink/microsoft_graph_hyperlink_request_builder'
require_relative './microsoft_graph_hyp_geom_dist/microsoft_graph_hyp_geom_dist_request_builder'
require_relative './microsoft_graph_if/microsoft_graph_if_request_builder'
require_relative './microsoft_graph_im_abs/microsoft_graph_im_abs_request_builder'
require_relative './microsoft_graph_imaginary/microsoft_graph_imaginary_request_builder'
require_relative './microsoft_graph_im_argument/microsoft_graph_im_argument_request_builder'
require_relative './microsoft_graph_im_conjugate/microsoft_graph_im_conjugate_request_builder'
require_relative './microsoft_graph_im_cos/microsoft_graph_im_cos_request_builder'
require_relative './microsoft_graph_im_cosh/microsoft_graph_im_cosh_request_builder'
require_relative './microsoft_graph_im_cot/microsoft_graph_im_cot_request_builder'
require_relative './microsoft_graph_im_csc/microsoft_graph_im_csc_request_builder'
require_relative './microsoft_graph_im_csch/microsoft_graph_im_csch_request_builder'
require_relative './microsoft_graph_im_div/microsoft_graph_im_div_request_builder'
require_relative './microsoft_graph_im_exp/microsoft_graph_im_exp_request_builder'
require_relative './microsoft_graph_im_ln/microsoft_graph_im_ln_request_builder'
require_relative './microsoft_graph_im_log10/microsoft_graph_im_log10_request_builder'
require_relative './microsoft_graph_im_log2/microsoft_graph_im_log2_request_builder'
require_relative './microsoft_graph_im_power/microsoft_graph_im_power_request_builder'
require_relative './microsoft_graph_im_product/microsoft_graph_im_product_request_builder'
require_relative './microsoft_graph_im_real/microsoft_graph_im_real_request_builder'
require_relative './microsoft_graph_im_sec/microsoft_graph_im_sec_request_builder'
require_relative './microsoft_graph_im_sech/microsoft_graph_im_sech_request_builder'
require_relative './microsoft_graph_im_sin/microsoft_graph_im_sin_request_builder'
require_relative './microsoft_graph_im_sinh/microsoft_graph_im_sinh_request_builder'
require_relative './microsoft_graph_im_sqrt/microsoft_graph_im_sqrt_request_builder'
require_relative './microsoft_graph_im_sub/microsoft_graph_im_sub_request_builder'
require_relative './microsoft_graph_im_sum/microsoft_graph_im_sum_request_builder'
require_relative './microsoft_graph_im_tan/microsoft_graph_im_tan_request_builder'
require_relative './microsoft_graph_int/microsoft_graph_int_request_builder'
require_relative './microsoft_graph_int_rate/microsoft_graph_int_rate_request_builder'
require_relative './microsoft_graph_ipmt/microsoft_graph_ipmt_request_builder'
require_relative './microsoft_graph_irr/microsoft_graph_irr_request_builder'
require_relative './microsoft_graph_is_err/microsoft_graph_is_err_request_builder'
require_relative './microsoft_graph_is_error/microsoft_graph_is_error_request_builder'
require_relative './microsoft_graph_is_even/microsoft_graph_is_even_request_builder'
require_relative './microsoft_graph_is_formula/microsoft_graph_is_formula_request_builder'
require_relative './microsoft_graph_is_logical/microsoft_graph_is_logical_request_builder'
require_relative './microsoft_graph_is_n_a/microsoft_graph_is_n_a_request_builder'
require_relative './microsoft_graph_is_non_text/microsoft_graph_is_non_text_request_builder'
require_relative './microsoft_graph_is_number/microsoft_graph_is_number_request_builder'
require_relative './microsoft_graph_is_odd/microsoft_graph_is_odd_request_builder'
require_relative './microsoft_graph_iso_week_num/microsoft_graph_iso_week_num_request_builder'
require_relative './microsoft_graph_iso_ceiling/microsoft_graph_iso_ceiling_request_builder'
require_relative './microsoft_graph_ispmt/microsoft_graph_ispmt_request_builder'
require_relative './microsoft_graph_isref/microsoft_graph_isref_request_builder'
require_relative './microsoft_graph_is_text/microsoft_graph_is_text_request_builder'
require_relative './microsoft_graph_kurt/microsoft_graph_kurt_request_builder'
require_relative './microsoft_graph_large/microsoft_graph_large_request_builder'
require_relative './microsoft_graph_lcm/microsoft_graph_lcm_request_builder'
require_relative './microsoft_graph_left/microsoft_graph_left_request_builder'
require_relative './microsoft_graph_leftb/microsoft_graph_leftb_request_builder'
require_relative './microsoft_graph_len/microsoft_graph_len_request_builder'
require_relative './microsoft_graph_lenb/microsoft_graph_lenb_request_builder'
require_relative './microsoft_graph_ln/microsoft_graph_ln_request_builder'
require_relative './microsoft_graph_log/microsoft_graph_log_request_builder'
require_relative './microsoft_graph_log10/microsoft_graph_log10_request_builder'
require_relative './microsoft_graph_log_norm_dist/microsoft_graph_log_norm_dist_request_builder'
require_relative './microsoft_graph_log_norm_inv/microsoft_graph_log_norm_inv_request_builder'
require_relative './microsoft_graph_lookup/microsoft_graph_lookup_request_builder'
require_relative './microsoft_graph_lower/microsoft_graph_lower_request_builder'
require_relative './microsoft_graph_match/microsoft_graph_match_request_builder'
require_relative './microsoft_graph_max/microsoft_graph_max_request_builder'
require_relative './microsoft_graph_max_a/microsoft_graph_max_a_request_builder'
require_relative './microsoft_graph_mduration/microsoft_graph_mduration_request_builder'
require_relative './microsoft_graph_median/microsoft_graph_median_request_builder'
require_relative './microsoft_graph_mid/microsoft_graph_mid_request_builder'
require_relative './microsoft_graph_midb/microsoft_graph_midb_request_builder'
require_relative './microsoft_graph_min/microsoft_graph_min_request_builder'
require_relative './microsoft_graph_min_a/microsoft_graph_min_a_request_builder'
require_relative './microsoft_graph_minute/microsoft_graph_minute_request_builder'
require_relative './microsoft_graph_mirr/microsoft_graph_mirr_request_builder'
require_relative './microsoft_graph_mod/microsoft_graph_mod_request_builder'
require_relative './microsoft_graph_month/microsoft_graph_month_request_builder'
require_relative './microsoft_graph_mround/microsoft_graph_mround_request_builder'
require_relative './microsoft_graph_multi_nomial/microsoft_graph_multi_nomial_request_builder'
require_relative './microsoft_graph_n/microsoft_graph_n_request_builder'
require_relative './microsoft_graph_na/microsoft_graph_na_request_builder'
require_relative './microsoft_graph_neg_binom_dist/microsoft_graph_neg_binom_dist_request_builder'
require_relative './microsoft_graph_network_days/microsoft_graph_network_days_request_builder'
require_relative './microsoft_graph_network_days_intl/microsoft_graph_network_days_intl_request_builder'
require_relative './microsoft_graph_nominal/microsoft_graph_nominal_request_builder'
require_relative './microsoft_graph_norm_dist/microsoft_graph_norm_dist_request_builder'
require_relative './microsoft_graph_norm_inv/microsoft_graph_norm_inv_request_builder'
require_relative './microsoft_graph_norm_s_dist/microsoft_graph_norm_s_dist_request_builder'
require_relative './microsoft_graph_norm_s_inv/microsoft_graph_norm_s_inv_request_builder'
require_relative './microsoft_graph_not/microsoft_graph_not_request_builder'
require_relative './microsoft_graph_now/microsoft_graph_now_request_builder'
require_relative './microsoft_graph_nper/microsoft_graph_nper_request_builder'
require_relative './microsoft_graph_npv/microsoft_graph_npv_request_builder'
require_relative './microsoft_graph_number_value/microsoft_graph_number_value_request_builder'
require_relative './microsoft_graph_oct2_bin/microsoft_graph_oct2_bin_request_builder'
require_relative './microsoft_graph_oct2_dec/microsoft_graph_oct2_dec_request_builder'
require_relative './microsoft_graph_oct2_hex/microsoft_graph_oct2_hex_request_builder'
require_relative './microsoft_graph_odd/microsoft_graph_odd_request_builder'
require_relative './microsoft_graph_odd_f_price/microsoft_graph_odd_f_price_request_builder'
require_relative './microsoft_graph_odd_f_yield/microsoft_graph_odd_f_yield_request_builder'
require_relative './microsoft_graph_odd_l_price/microsoft_graph_odd_l_price_request_builder'
require_relative './microsoft_graph_odd_l_yield/microsoft_graph_odd_l_yield_request_builder'
require_relative './microsoft_graph_or/microsoft_graph_or_request_builder'
require_relative './microsoft_graph_pduration/microsoft_graph_pduration_request_builder'
require_relative './microsoft_graph_percentile_exc/microsoft_graph_percentile_exc_request_builder'
require_relative './microsoft_graph_percentile_inc/microsoft_graph_percentile_inc_request_builder'
require_relative './microsoft_graph_percent_rank_exc/microsoft_graph_percent_rank_exc_request_builder'
require_relative './microsoft_graph_percent_rank_inc/microsoft_graph_percent_rank_inc_request_builder'
require_relative './microsoft_graph_permut/microsoft_graph_permut_request_builder'
require_relative './microsoft_graph_permutationa/microsoft_graph_permutationa_request_builder'
require_relative './microsoft_graph_phi/microsoft_graph_phi_request_builder'
require_relative './microsoft_graph_pi/microsoft_graph_pi_request_builder'
require_relative './microsoft_graph_pmt/microsoft_graph_pmt_request_builder'
require_relative './microsoft_graph_poisson_dist/microsoft_graph_poisson_dist_request_builder'
require_relative './microsoft_graph_power/microsoft_graph_power_request_builder'
require_relative './microsoft_graph_ppmt/microsoft_graph_ppmt_request_builder'
require_relative './microsoft_graph_price/microsoft_graph_price_request_builder'
require_relative './microsoft_graph_price_disc/microsoft_graph_price_disc_request_builder'
require_relative './microsoft_graph_price_mat/microsoft_graph_price_mat_request_builder'
require_relative './microsoft_graph_product/microsoft_graph_product_request_builder'
require_relative './microsoft_graph_proper/microsoft_graph_proper_request_builder'
require_relative './microsoft_graph_pv/microsoft_graph_pv_request_builder'
require_relative './microsoft_graph_quartile_exc/microsoft_graph_quartile_exc_request_builder'
require_relative './microsoft_graph_quartile_inc/microsoft_graph_quartile_inc_request_builder'
require_relative './microsoft_graph_quotient/microsoft_graph_quotient_request_builder'
require_relative './microsoft_graph_radians/microsoft_graph_radians_request_builder'
require_relative './microsoft_graph_rand/microsoft_graph_rand_request_builder'
require_relative './microsoft_graph_rand_between/microsoft_graph_rand_between_request_builder'
require_relative './microsoft_graph_rank_avg/microsoft_graph_rank_avg_request_builder'
require_relative './microsoft_graph_rank_eq/microsoft_graph_rank_eq_request_builder'
require_relative './microsoft_graph_rate/microsoft_graph_rate_request_builder'
require_relative './microsoft_graph_received/microsoft_graph_received_request_builder'
require_relative './microsoft_graph_replace/microsoft_graph_replace_request_builder'
require_relative './microsoft_graph_replace_b/microsoft_graph_replace_b_request_builder'
require_relative './microsoft_graph_rept/microsoft_graph_rept_request_builder'
require_relative './microsoft_graph_right/microsoft_graph_right_request_builder'
require_relative './microsoft_graph_rightb/microsoft_graph_rightb_request_builder'
require_relative './microsoft_graph_roman/microsoft_graph_roman_request_builder'
require_relative './microsoft_graph_round/microsoft_graph_round_request_builder'
require_relative './microsoft_graph_round_down/microsoft_graph_round_down_request_builder'
require_relative './microsoft_graph_round_up/microsoft_graph_round_up_request_builder'
require_relative './microsoft_graph_rows/microsoft_graph_rows_request_builder'
require_relative './microsoft_graph_rri/microsoft_graph_rri_request_builder'
require_relative './microsoft_graph_sec/microsoft_graph_sec_request_builder'
require_relative './microsoft_graph_sech/microsoft_graph_sech_request_builder'
require_relative './microsoft_graph_second/microsoft_graph_second_request_builder'
require_relative './microsoft_graph_series_sum/microsoft_graph_series_sum_request_builder'
require_relative './microsoft_graph_sheet/microsoft_graph_sheet_request_builder'
require_relative './microsoft_graph_sheets/microsoft_graph_sheets_request_builder'
require_relative './microsoft_graph_sign/microsoft_graph_sign_request_builder'
require_relative './microsoft_graph_sin/microsoft_graph_sin_request_builder'
require_relative './microsoft_graph_sinh/microsoft_graph_sinh_request_builder'
require_relative './microsoft_graph_skew/microsoft_graph_skew_request_builder'
require_relative './microsoft_graph_skew_p/microsoft_graph_skew_p_request_builder'
require_relative './microsoft_graph_sln/microsoft_graph_sln_request_builder'
require_relative './microsoft_graph_small/microsoft_graph_small_request_builder'
require_relative './microsoft_graph_sqrt/microsoft_graph_sqrt_request_builder'
require_relative './microsoft_graph_sqrt_pi/microsoft_graph_sqrt_pi_request_builder'
require_relative './microsoft_graph_standardize/microsoft_graph_standardize_request_builder'
require_relative './microsoft_graph_st_dev_a/microsoft_graph_st_dev_a_request_builder'
require_relative './microsoft_graph_st_dev_p_a/microsoft_graph_st_dev_p_a_request_builder'
require_relative './microsoft_graph_st_dev_p/microsoft_graph_st_dev_p_request_builder'
require_relative './microsoft_graph_st_dev_s/microsoft_graph_st_dev_s_request_builder'
require_relative './microsoft_graph_substitute/microsoft_graph_substitute_request_builder'
require_relative './microsoft_graph_subtotal/microsoft_graph_subtotal_request_builder'
require_relative './microsoft_graph_sum/microsoft_graph_sum_request_builder'
require_relative './microsoft_graph_sum_if/microsoft_graph_sum_if_request_builder'
require_relative './microsoft_graph_sum_ifs/microsoft_graph_sum_ifs_request_builder'
require_relative './microsoft_graph_sum_sq/microsoft_graph_sum_sq_request_builder'
require_relative './microsoft_graph_syd/microsoft_graph_syd_request_builder'
require_relative './microsoft_graph_t/microsoft_graph_t_request_builder'
require_relative './microsoft_graph_tan/microsoft_graph_tan_request_builder'
require_relative './microsoft_graph_tanh/microsoft_graph_tanh_request_builder'
require_relative './microsoft_graph_tbill_eq/microsoft_graph_tbill_eq_request_builder'
require_relative './microsoft_graph_tbill_price/microsoft_graph_tbill_price_request_builder'
require_relative './microsoft_graph_tbill_yield/microsoft_graph_tbill_yield_request_builder'
require_relative './microsoft_graph_text/microsoft_graph_text_request_builder'
require_relative './microsoft_graph_time/microsoft_graph_time_request_builder'
require_relative './microsoft_graph_timevalue/microsoft_graph_timevalue_request_builder'
require_relative './microsoft_graph_today/microsoft_graph_today_request_builder'
require_relative './microsoft_graph_trim/microsoft_graph_trim_request_builder'
require_relative './microsoft_graph_trim_mean/microsoft_graph_trim_mean_request_builder'
require_relative './microsoft_graph_true/microsoft_graph_true_request_builder'
require_relative './microsoft_graph_trunc/microsoft_graph_trunc_request_builder'
require_relative './microsoft_graph_type/microsoft_graph_type_request_builder'
require_relative './microsoft_graph_t_dist/microsoft_graph_t_dist_request_builder'
require_relative './microsoft_graph_t_dist_2_t/microsoft_graph_t_dist_2_t_request_builder'
require_relative './microsoft_graph_t_dist_r_t/microsoft_graph_t_dist_r_t_request_builder'
require_relative './microsoft_graph_t_inv/microsoft_graph_t_inv_request_builder'
require_relative './microsoft_graph_t_inv_2_t/microsoft_graph_t_inv_2_t_request_builder'
require_relative './microsoft_graph_unichar/microsoft_graph_unichar_request_builder'
require_relative './microsoft_graph_unicode/microsoft_graph_unicode_request_builder'
require_relative './microsoft_graph_upper/microsoft_graph_upper_request_builder'
require_relative './microsoft_graph_usdollar/microsoft_graph_usdollar_request_builder'
require_relative './microsoft_graph_value/microsoft_graph_value_request_builder'
require_relative './microsoft_graph_var_a/microsoft_graph_var_a_request_builder'
require_relative './microsoft_graph_var_p_a/microsoft_graph_var_p_a_request_builder'
require_relative './microsoft_graph_var_p/microsoft_graph_var_p_request_builder'
require_relative './microsoft_graph_var_s/microsoft_graph_var_s_request_builder'
require_relative './microsoft_graph_vdb/microsoft_graph_vdb_request_builder'
require_relative './microsoft_graph_vlookup/microsoft_graph_vlookup_request_builder'
require_relative './microsoft_graph_weekday/microsoft_graph_weekday_request_builder'
require_relative './microsoft_graph_week_num/microsoft_graph_week_num_request_builder'
require_relative './microsoft_graph_weibull_dist/microsoft_graph_weibull_dist_request_builder'
require_relative './microsoft_graph_work_day/microsoft_graph_work_day_request_builder'
require_relative './microsoft_graph_work_day_intl/microsoft_graph_work_day_intl_request_builder'
require_relative './microsoft_graph_xirr/microsoft_graph_xirr_request_builder'
require_relative './microsoft_graph_xnpv/microsoft_graph_xnpv_request_builder'
require_relative './microsoft_graph_xor/microsoft_graph_xor_request_builder'
require_relative './microsoft_graph_year/microsoft_graph_year_request_builder'
require_relative './microsoft_graph_year_frac/microsoft_graph_year_frac_request_builder'
require_relative './microsoft_graph_yield/microsoft_graph_yield_request_builder'
require_relative './microsoft_graph_yield_disc/microsoft_graph_yield_disc_request_builder'
require_relative './microsoft_graph_yield_mat/microsoft_graph_yield_mat_request_builder'
require_relative './microsoft_graph_z_test/microsoft_graph_z_test_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            ## 
                            # Provides operations to manage the functions property of the microsoft.graph.workbook entity.
                            class FunctionsRequestBuilder
                                
                                ## 
                                # Provides operations to call the abs method.
                                def microsoft_graph_abs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAbs::MicrosoftGraphAbsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the accrInt method.
                                def microsoft_graph_accr_int()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAccrInt::MicrosoftGraphAccrIntRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the accrIntM method.
                                def microsoft_graph_accr_int_m()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAccrIntM::MicrosoftGraphAccrIntMRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acos method.
                                def microsoft_graph_acos()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcos::MicrosoftGraphAcosRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acosh method.
                                def microsoft_graph_acosh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcosh::MicrosoftGraphAcoshRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acot method.
                                def microsoft_graph_acot()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcot::MicrosoftGraphAcotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acoth method.
                                def microsoft_graph_acoth()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcoth::MicrosoftGraphAcothRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the amorDegrc method.
                                def microsoft_graph_amor_degrc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAmorDegrc::MicrosoftGraphAmorDegrcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the amorLinc method.
                                def microsoft_graph_amor_linc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAmorLinc::MicrosoftGraphAmorLincRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the and method.
                                def microsoft_graph_and()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAnd::MicrosoftGraphAndRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the arabic method.
                                def microsoft_graph_arabic()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphArabic::MicrosoftGraphArabicRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the areas method.
                                def microsoft_graph_areas()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAreas::MicrosoftGraphAreasRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the asc method.
                                def microsoft_graph_asc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAsc::MicrosoftGraphAscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the asin method.
                                def microsoft_graph_asin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAsin::MicrosoftGraphAsinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the asinh method.
                                def microsoft_graph_asinh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAsinh::MicrosoftGraphAsinhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the atan method.
                                def microsoft_graph_atan()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAtan::MicrosoftGraphAtanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the atan2 method.
                                def microsoft_graph_atan2()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAtan2::MicrosoftGraphAtan2RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the atanh method.
                                def microsoft_graph_atanh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAtanh::MicrosoftGraphAtanhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the aveDev method.
                                def microsoft_graph_ave_dev()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAveDev::MicrosoftGraphAveDevRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the average method.
                                def microsoft_graph_average()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverage::MicrosoftGraphAverageRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the averageA method.
                                def microsoft_graph_average_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverageA::MicrosoftGraphAverageARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the averageIf method.
                                def microsoft_graph_average_if()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverageIf::MicrosoftGraphAverageIfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the averageIfs method.
                                def microsoft_graph_average_ifs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverageIfs::MicrosoftGraphAverageIfsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bahtText method.
                                def microsoft_graph_baht_text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBahtText::MicrosoftGraphBahtTextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the base method.
                                def microsoft_graph_base()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBase::MicrosoftGraphBaseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselI method.
                                def microsoft_graph_bessel_i()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselI::MicrosoftGraphBesselIRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselJ method.
                                def microsoft_graph_bessel_j()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselJ::MicrosoftGraphBesselJRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselK method.
                                def microsoft_graph_bessel_k()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselK::MicrosoftGraphBesselKRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselY method.
                                def microsoft_graph_bessel_y()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselY::MicrosoftGraphBesselYRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the beta_Dist method.
                                def microsoft_graph_beta_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBeta_Dist::MicrosoftGraphBeta_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the beta_Inv method.
                                def microsoft_graph_beta_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBeta_Inv::MicrosoftGraphBeta_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bin2Dec method.
                                def microsoft_graph_bin2_dec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBin2Dec::MicrosoftGraphBin2DecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bin2Hex method.
                                def microsoft_graph_bin2_hex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBin2Hex::MicrosoftGraphBin2HexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bin2Oct method.
                                def microsoft_graph_bin2_oct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBin2Oct::MicrosoftGraphBin2OctRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the binom_Dist method.
                                def microsoft_graph_binom_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBinom_Dist::MicrosoftGraphBinom_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the binom_Dist_Range method.
                                def microsoft_graph_binom_dist_range()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBinom_Dist_Range::MicrosoftGraphBinom_Dist_RangeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the binom_Inv method.
                                def microsoft_graph_binom_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBinom_Inv::MicrosoftGraphBinom_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitand method.
                                def microsoft_graph_bitand()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitand::MicrosoftGraphBitandRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitlshift method.
                                def microsoft_graph_bitlshift()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitlshift::MicrosoftGraphBitlshiftRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitor method.
                                def microsoft_graph_bitor()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitor::MicrosoftGraphBitorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitrshift method.
                                def microsoft_graph_bitrshift()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitrshift::MicrosoftGraphBitrshiftRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitxor method.
                                def microsoft_graph_bitxor()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitxor::MicrosoftGraphBitxorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ceiling_Math method.
                                def microsoft_graph_ceiling_math()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCeiling_Math::MicrosoftGraphCeiling_MathRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ceiling_Precise method.
                                def microsoft_graph_ceiling_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCeiling_Precise::MicrosoftGraphCeiling_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the char method.
                                def microsoft_graph_char()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChar::MicrosoftGraphCharRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Dist method.
                                def microsoft_graph_chi_sq_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Dist::MicrosoftGraphChiSq_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Dist_RT method.
                                def microsoft_graph_chi_sq_dist_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Dist_RT::MicrosoftGraphChiSq_Dist_RTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Inv method.
                                def microsoft_graph_chi_sq_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Inv::MicrosoftGraphChiSq_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Inv_RT method.
                                def microsoft_graph_chi_sq_inv_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Inv_RT::MicrosoftGraphChiSq_Inv_RTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the choose method.
                                def microsoft_graph_choose()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChoose::MicrosoftGraphChooseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the clean method.
                                def microsoft_graph_clean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphClean::MicrosoftGraphCleanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the code method.
                                def microsoft_graph_code()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCode::MicrosoftGraphCodeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the columns method.
                                def microsoft_graph_columns()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphColumns::MicrosoftGraphColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the combin method.
                                def microsoft_graph_combin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCombin::MicrosoftGraphCombinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the combina method.
                                def microsoft_graph_combina()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCombina::MicrosoftGraphCombinaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the complex method.
                                def microsoft_graph_complex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphComplex::MicrosoftGraphComplexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the concatenate method.
                                def microsoft_graph_concatenate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConcatenate::MicrosoftGraphConcatenateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the confidence_Norm method.
                                def microsoft_graph_confidence_norm()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConfidence_Norm::MicrosoftGraphConfidence_NormRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the confidence_T method.
                                def microsoft_graph_confidence_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConfidence_T::MicrosoftGraphConfidence_TRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the convert method.
                                def microsoft_graph_convert()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConvert::MicrosoftGraphConvertRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cos method.
                                def microsoft_graph_cos()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCos::MicrosoftGraphCosRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cosh method.
                                def microsoft_graph_cosh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCosh::MicrosoftGraphCoshRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cot method.
                                def microsoft_graph_cot()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCot::MicrosoftGraphCotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coth method.
                                def microsoft_graph_coth()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoth::MicrosoftGraphCothRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the count method.
                                def microsoft_graph_count()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCount::MicrosoftGraphCountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countA method.
                                def microsoft_graph_count_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountA::MicrosoftGraphCountARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countBlank method.
                                def microsoft_graph_count_blank()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountBlank::MicrosoftGraphCountBlankRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countIf method.
                                def microsoft_graph_count_if()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountIf::MicrosoftGraphCountIfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countIfs method.
                                def microsoft_graph_count_ifs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountIfs::MicrosoftGraphCountIfsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupDayBs method.
                                def microsoft_graph_coup_day_bs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupDayBs::MicrosoftGraphCoupDayBsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupDays method.
                                def microsoft_graph_coup_days()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupDays::MicrosoftGraphCoupDaysRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupDaysNc method.
                                def microsoft_graph_coup_days_nc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupDaysNc::MicrosoftGraphCoupDaysNcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupNcd method.
                                def microsoft_graph_coup_ncd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupNcd::MicrosoftGraphCoupNcdRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupNum method.
                                def microsoft_graph_coup_num()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupNum::MicrosoftGraphCoupNumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupPcd method.
                                def microsoft_graph_coup_pcd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupPcd::MicrosoftGraphCoupPcdRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the csc method.
                                def microsoft_graph_csc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCsc::MicrosoftGraphCscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the csch method.
                                def microsoft_graph_csch()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCsch::MicrosoftGraphCschRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cumIPmt method.
                                def microsoft_graph_cum_i_pmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCumIPmt::MicrosoftGraphCumIPmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cumPrinc method.
                                def microsoft_graph_cum_princ()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCumPrinc::MicrosoftGraphCumPrincRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the date method.
                                def microsoft_graph_date()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDate::MicrosoftGraphDateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the datevalue method.
                                def microsoft_graph_datevalue()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDatevalue::MicrosoftGraphDatevalueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the daverage method.
                                def microsoft_graph_daverage()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDaverage::MicrosoftGraphDaverageRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the day method.
                                def microsoft_graph_day()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDay::MicrosoftGraphDayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the days method.
                                def microsoft_graph_days()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDays::MicrosoftGraphDaysRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the days360 method.
                                def microsoft_graph_days360()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDays360::MicrosoftGraphDays360RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the db method.
                                def microsoft_graph_db()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDb::MicrosoftGraphDbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dbcs method.
                                def microsoft_graph_dbcs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDbcs::MicrosoftGraphDbcsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dcount method.
                                def microsoft_graph_dcount()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDcount::MicrosoftGraphDcountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dcountA method.
                                def microsoft_graph_dcount_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDcountA::MicrosoftGraphDcountARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ddb method.
                                def microsoft_graph_ddb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDdb::MicrosoftGraphDdbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dec2Bin method.
                                def microsoft_graph_dec2_bin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDec2Bin::MicrosoftGraphDec2BinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dec2Hex method.
                                def microsoft_graph_dec2_hex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDec2Hex::MicrosoftGraphDec2HexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dec2Oct method.
                                def microsoft_graph_dec2_oct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDec2Oct::MicrosoftGraphDec2OctRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the decimal method.
                                def microsoft_graph_decimal()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDecimal::MicrosoftGraphDecimalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the degrees method.
                                def microsoft_graph_degrees()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDegrees::MicrosoftGraphDegreesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the delta method.
                                def microsoft_graph_delta()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDelta::MicrosoftGraphDeltaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the devSq method.
                                def microsoft_graph_dev_sq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDevSq::MicrosoftGraphDevSqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dget method.
                                def microsoft_graph_dget()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDget::MicrosoftGraphDgetRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the disc method.
                                def microsoft_graph_disc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDisc::MicrosoftGraphDiscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dmax method.
                                def microsoft_graph_dmax()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDmax::MicrosoftGraphDmaxRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dmin method.
                                def microsoft_graph_dmin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDmin::MicrosoftGraphDminRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dollar method.
                                def microsoft_graph_dollar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDollar::MicrosoftGraphDollarRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dollarDe method.
                                def microsoft_graph_dollar_de()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDollarDe::MicrosoftGraphDollarDeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dollarFr method.
                                def microsoft_graph_dollar_fr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDollarFr::MicrosoftGraphDollarFrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dproduct method.
                                def microsoft_graph_dproduct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDproduct::MicrosoftGraphDproductRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dstDev method.
                                def microsoft_graph_dst_dev()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDstDev::MicrosoftGraphDstDevRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dstDevP method.
                                def microsoft_graph_dst_dev_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDstDevP::MicrosoftGraphDstDevPRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dsum method.
                                def microsoft_graph_dsum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDsum::MicrosoftGraphDsumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the duration method.
                                def microsoft_graph_duration()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDuration::MicrosoftGraphDurationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dvar method.
                                def microsoft_graph_dvar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDvar::MicrosoftGraphDvarRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dvarP method.
                                def microsoft_graph_dvar_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDvarP::MicrosoftGraphDvarPRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ecma_Ceiling method.
                                def microsoft_graph_ecma_ceiling()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEcma_Ceiling::MicrosoftGraphEcma_CeilingRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the edate method.
                                def microsoft_graph_edate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEdate::MicrosoftGraphEdateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the effect method.
                                def microsoft_graph_effect()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEffect::MicrosoftGraphEffectRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the eoMonth method.
                                def microsoft_graph_eo_month()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEoMonth::MicrosoftGraphEoMonthRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erf method.
                                def microsoft_graph_erf()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErf::MicrosoftGraphErfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erf_Precise method.
                                def microsoft_graph_erf_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErf_Precise::MicrosoftGraphErf_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erfC method.
                                def microsoft_graph_erf_c()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErfC::MicrosoftGraphErfCRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erfC_Precise method.
                                def microsoft_graph_erf_c_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErfC_Precise::MicrosoftGraphErfC_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the error_Type method.
                                def microsoft_graph_error_type()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphError_Type::MicrosoftGraphError_TypeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the even method.
                                def microsoft_graph_even()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEven::MicrosoftGraphEvenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the exact method.
                                def microsoft_graph_exact()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphExact::MicrosoftGraphExactRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the exp method.
                                def microsoft_graph_exp()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphExp::MicrosoftGraphExpRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the expon_Dist method.
                                def microsoft_graph_expon_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphExpon_Dist::MicrosoftGraphExpon_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Dist method.
                                def microsoft_graph_f_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Dist::MicrosoftGraphF_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Dist_RT method.
                                def microsoft_graph_f_dist_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Dist_RT::MicrosoftGraphF_Dist_RTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Inv method.
                                def microsoft_graph_f_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Inv::MicrosoftGraphF_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Inv_RT method.
                                def microsoft_graph_f_inv_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Inv_RT::MicrosoftGraphF_Inv_RTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fact method.
                                def microsoft_graph_fact()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFact::MicrosoftGraphFactRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the factDouble method.
                                def microsoft_graph_fact_double()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFactDouble::MicrosoftGraphFactDoubleRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the false method.
                                def microsoft_graph_false()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFalse::MicrosoftGraphFalseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the find method.
                                def microsoft_graph_find()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFind::MicrosoftGraphFindRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the findB method.
                                def microsoft_graph_find_b()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFindB::MicrosoftGraphFindBRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fisher method.
                                def microsoft_graph_fisher()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFisher::MicrosoftGraphFisherRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fisherInv method.
                                def microsoft_graph_fisher_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFisherInv::MicrosoftGraphFisherInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fixed method.
                                def microsoft_graph_fixed()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFixed::MicrosoftGraphFixedRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the floor_Math method.
                                def microsoft_graph_floor_math()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFloor_Math::MicrosoftGraphFloor_MathRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the floor_Precise method.
                                def microsoft_graph_floor_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFloor_Precise::MicrosoftGraphFloor_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fv method.
                                def microsoft_graph_fv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFv::MicrosoftGraphFvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fvschedule method.
                                def microsoft_graph_fvschedule()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFvschedule::MicrosoftGraphFvscheduleRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gamma method.
                                def microsoft_graph_gamma()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGamma::MicrosoftGraphGammaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gamma_Dist method.
                                def microsoft_graph_gamma_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGamma_Dist::MicrosoftGraphGamma_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gamma_Inv method.
                                def microsoft_graph_gamma_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGamma_Inv::MicrosoftGraphGamma_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gammaLn method.
                                def microsoft_graph_gamma_ln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGammaLn::MicrosoftGraphGammaLnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gammaLn_Precise method.
                                def microsoft_graph_gamma_ln_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGammaLn_Precise::MicrosoftGraphGammaLn_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gauss method.
                                def microsoft_graph_gauss()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGauss::MicrosoftGraphGaussRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gcd method.
                                def microsoft_graph_gcd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGcd::MicrosoftGraphGcdRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the geoMean method.
                                def microsoft_graph_geo_mean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGeoMean::MicrosoftGraphGeoMeanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the geStep method.
                                def microsoft_graph_ge_step()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGeStep::MicrosoftGraphGeStepRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the harMean method.
                                def microsoft_graph_har_mean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHarMean::MicrosoftGraphHarMeanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hex2Bin method.
                                def microsoft_graph_hex2_bin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHex2Bin::MicrosoftGraphHex2BinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hex2Dec method.
                                def microsoft_graph_hex2_dec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHex2Dec::MicrosoftGraphHex2DecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hex2Oct method.
                                def microsoft_graph_hex2_oct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHex2Oct::MicrosoftGraphHex2OctRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hlookup method.
                                def microsoft_graph_hlookup()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHlookup::MicrosoftGraphHlookupRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hour method.
                                def microsoft_graph_hour()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHour::MicrosoftGraphHourRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hyperlink method.
                                def microsoft_graph_hyperlink()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHyperlink::MicrosoftGraphHyperlinkRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hypGeom_Dist method.
                                def microsoft_graph_hyp_geom_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHypGeom_Dist::MicrosoftGraphHypGeom_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the if method.
                                def microsoft_graph_if()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIf::MicrosoftGraphIfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imAbs method.
                                def microsoft_graph_im_abs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImAbs::MicrosoftGraphImAbsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imaginary method.
                                def microsoft_graph_imaginary()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImaginary::MicrosoftGraphImaginaryRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imArgument method.
                                def microsoft_graph_im_argument()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImArgument::MicrosoftGraphImArgumentRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imConjugate method.
                                def microsoft_graph_im_conjugate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImConjugate::MicrosoftGraphImConjugateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCos method.
                                def microsoft_graph_im_cos()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCos::MicrosoftGraphImCosRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCosh method.
                                def microsoft_graph_im_cosh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCosh::MicrosoftGraphImCoshRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCot method.
                                def microsoft_graph_im_cot()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCot::MicrosoftGraphImCotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCsc method.
                                def microsoft_graph_im_csc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCsc::MicrosoftGraphImCscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCsch method.
                                def microsoft_graph_im_csch()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCsch::MicrosoftGraphImCschRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imDiv method.
                                def microsoft_graph_im_div()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImDiv::MicrosoftGraphImDivRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imExp method.
                                def microsoft_graph_im_exp()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImExp::MicrosoftGraphImExpRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imLn method.
                                def microsoft_graph_im_ln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImLn::MicrosoftGraphImLnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imLog10 method.
                                def microsoft_graph_im_log10()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImLog10::MicrosoftGraphImLog10RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imLog2 method.
                                def microsoft_graph_im_log2()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImLog2::MicrosoftGraphImLog2RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imPower method.
                                def microsoft_graph_im_power()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImPower::MicrosoftGraphImPowerRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imProduct method.
                                def microsoft_graph_im_product()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImProduct::MicrosoftGraphImProductRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imReal method.
                                def microsoft_graph_im_real()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImReal::MicrosoftGraphImRealRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSec method.
                                def microsoft_graph_im_sec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSec::MicrosoftGraphImSecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSech method.
                                def microsoft_graph_im_sech()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSech::MicrosoftGraphImSechRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSin method.
                                def microsoft_graph_im_sin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSin::MicrosoftGraphImSinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSinh method.
                                def microsoft_graph_im_sinh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSinh::MicrosoftGraphImSinhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSqrt method.
                                def microsoft_graph_im_sqrt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSqrt::MicrosoftGraphImSqrtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSub method.
                                def microsoft_graph_im_sub()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSub::MicrosoftGraphImSubRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSum method.
                                def microsoft_graph_im_sum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSum::MicrosoftGraphImSumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imTan method.
                                def microsoft_graph_im_tan()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImTan::MicrosoftGraphImTanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the int method.
                                def microsoft_graph_int()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphInt::MicrosoftGraphIntRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the intRate method.
                                def microsoft_graph_int_rate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIntRate::MicrosoftGraphIntRateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ipmt method.
                                def microsoft_graph_ipmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIpmt::MicrosoftGraphIpmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the irr method.
                                def microsoft_graph_irr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIrr::MicrosoftGraphIrrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isErr method.
                                def microsoft_graph_is_err()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsErr::MicrosoftGraphIsErrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isError method.
                                def microsoft_graph_is_error()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsError::MicrosoftGraphIsErrorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isEven method.
                                def microsoft_graph_is_even()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsEven::MicrosoftGraphIsEvenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isFormula method.
                                def microsoft_graph_is_formula()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsFormula::MicrosoftGraphIsFormulaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isLogical method.
                                def microsoft_graph_is_logical()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsLogical::MicrosoftGraphIsLogicalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isNA method.
                                def microsoft_graph_is_n_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsNA::MicrosoftGraphIsNARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isNonText method.
                                def microsoft_graph_is_non_text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsNonText::MicrosoftGraphIsNonTextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isNumber method.
                                def microsoft_graph_is_number()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsNumber::MicrosoftGraphIsNumberRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the iso_Ceiling method.
                                def microsoft_graph_iso_ceiling()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIso_Ceiling::MicrosoftGraphIso_CeilingRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isOdd method.
                                def microsoft_graph_is_odd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsOdd::MicrosoftGraphIsOddRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isoWeekNum method.
                                def microsoft_graph_iso_week_num()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsoWeekNum::MicrosoftGraphIsoWeekNumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ispmt method.
                                def microsoft_graph_ispmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIspmt::MicrosoftGraphIspmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isref method.
                                def microsoft_graph_isref()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsref::MicrosoftGraphIsrefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isText method.
                                def microsoft_graph_is_text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsText::MicrosoftGraphIsTextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the kurt method.
                                def microsoft_graph_kurt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphKurt::MicrosoftGraphKurtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the large method.
                                def microsoft_graph_large()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLarge::MicrosoftGraphLargeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lcm method.
                                def microsoft_graph_lcm()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLcm::MicrosoftGraphLcmRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the left method.
                                def microsoft_graph_left()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLeft::MicrosoftGraphLeftRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the leftb method.
                                def microsoft_graph_leftb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLeftb::MicrosoftGraphLeftbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the len method.
                                def microsoft_graph_len()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLen::MicrosoftGraphLenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lenb method.
                                def microsoft_graph_lenb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLenb::MicrosoftGraphLenbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ln method.
                                def microsoft_graph_ln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLn::MicrosoftGraphLnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the log method.
                                def microsoft_graph_log()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLog::MicrosoftGraphLogRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the log10 method.
                                def microsoft_graph_log10()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLog10::MicrosoftGraphLog10RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the logNorm_Dist method.
                                def microsoft_graph_log_norm_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLogNorm_Dist::MicrosoftGraphLogNorm_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the logNorm_Inv method.
                                def microsoft_graph_log_norm_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLogNorm_Inv::MicrosoftGraphLogNorm_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lookup method.
                                def microsoft_graph_lookup()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLookup::MicrosoftGraphLookupRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lower method.
                                def microsoft_graph_lower()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLower::MicrosoftGraphLowerRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the match method.
                                def microsoft_graph_match()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMatch::MicrosoftGraphMatchRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the max method.
                                def microsoft_graph_max()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMax::MicrosoftGraphMaxRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the maxA method.
                                def microsoft_graph_max_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMaxA::MicrosoftGraphMaxARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mduration method.
                                def microsoft_graph_mduration()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMduration::MicrosoftGraphMdurationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the median method.
                                def microsoft_graph_median()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMedian::MicrosoftGraphMedianRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mid method.
                                def microsoft_graph_mid()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMid::MicrosoftGraphMidRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the midb method.
                                def microsoft_graph_midb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMidb::MicrosoftGraphMidbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the min method.
                                def microsoft_graph_min()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMin::MicrosoftGraphMinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the minA method.
                                def microsoft_graph_min_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMinA::MicrosoftGraphMinARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the minute method.
                                def microsoft_graph_minute()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMinute::MicrosoftGraphMinuteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mirr method.
                                def microsoft_graph_mirr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMirr::MicrosoftGraphMirrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mod method.
                                def microsoft_graph_mod()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMod::MicrosoftGraphModRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the month method.
                                def microsoft_graph_month()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMonth::MicrosoftGraphMonthRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mround method.
                                def microsoft_graph_mround()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMround::MicrosoftGraphMroundRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the multiNomial method.
                                def microsoft_graph_multi_nomial()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMultiNomial::MicrosoftGraphMultiNomialRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the n method.
                                def microsoft_graph_n()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphN::MicrosoftGraphNRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the na method.
                                def microsoft_graph_na()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNa::MicrosoftGraphNaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the negBinom_Dist method.
                                def microsoft_graph_neg_binom_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNegBinom_Dist::MicrosoftGraphNegBinom_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the networkDays method.
                                def microsoft_graph_network_days()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNetworkDays::MicrosoftGraphNetworkDaysRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the networkDays_Intl method.
                                def microsoft_graph_network_days_intl()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNetworkDays_Intl::MicrosoftGraphNetworkDays_IntlRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the nominal method.
                                def microsoft_graph_nominal()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNominal::MicrosoftGraphNominalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_Dist method.
                                def microsoft_graph_norm_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_Dist::MicrosoftGraphNorm_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_Inv method.
                                def microsoft_graph_norm_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_Inv::MicrosoftGraphNorm_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_S_Dist method.
                                def microsoft_graph_norm_s_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_S_Dist::MicrosoftGraphNorm_S_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_S_Inv method.
                                def microsoft_graph_norm_s_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_S_Inv::MicrosoftGraphNorm_S_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the not method.
                                def microsoft_graph_not()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNot::MicrosoftGraphNotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the now method.
                                def microsoft_graph_now()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNow::MicrosoftGraphNowRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the nper method.
                                def microsoft_graph_nper()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNper::MicrosoftGraphNperRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the npv method.
                                def microsoft_graph_npv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNpv::MicrosoftGraphNpvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the numberValue method.
                                def microsoft_graph_number_value()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNumberValue::MicrosoftGraphNumberValueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oct2Bin method.
                                def microsoft_graph_oct2_bin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOct2Bin::MicrosoftGraphOct2BinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oct2Dec method.
                                def microsoft_graph_oct2_dec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOct2Dec::MicrosoftGraphOct2DecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oct2Hex method.
                                def microsoft_graph_oct2_hex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOct2Hex::MicrosoftGraphOct2HexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the odd method.
                                def microsoft_graph_odd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOdd::MicrosoftGraphOddRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddFPrice method.
                                def microsoft_graph_odd_f_price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddFPrice::MicrosoftGraphOddFPriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddFYield method.
                                def microsoft_graph_odd_f_yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddFYield::MicrosoftGraphOddFYieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddLPrice method.
                                def microsoft_graph_odd_l_price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddLPrice::MicrosoftGraphOddLPriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddLYield method.
                                def microsoft_graph_odd_l_yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddLYield::MicrosoftGraphOddLYieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the or method.
                                def microsoft_graph_or()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOr::MicrosoftGraphOrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the pduration method.
                                def microsoft_graph_pduration()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPduration::MicrosoftGraphPdurationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentile_Exc method.
                                def microsoft_graph_percentile_exc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentile_Exc::MicrosoftGraphPercentile_ExcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentile_Inc method.
                                def microsoft_graph_percentile_inc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentile_Inc::MicrosoftGraphPercentile_IncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentRank_Exc method.
                                def microsoft_graph_percent_rank_exc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentRank_Exc::MicrosoftGraphPercentRank_ExcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentRank_Inc method.
                                def microsoft_graph_percent_rank_inc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentRank_Inc::MicrosoftGraphPercentRank_IncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the permut method.
                                def microsoft_graph_permut()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPermut::MicrosoftGraphPermutRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the permutationa method.
                                def microsoft_graph_permutationa()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPermutationa::MicrosoftGraphPermutationaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the phi method.
                                def microsoft_graph_phi()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPhi::MicrosoftGraphPhiRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the pi method.
                                def microsoft_graph_pi()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPi::MicrosoftGraphPiRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the pmt method.
                                def microsoft_graph_pmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPmt::MicrosoftGraphPmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the poisson_Dist method.
                                def microsoft_graph_poisson_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPoisson_Dist::MicrosoftGraphPoisson_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the power method.
                                def microsoft_graph_power()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPower::MicrosoftGraphPowerRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ppmt method.
                                def microsoft_graph_ppmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPpmt::MicrosoftGraphPpmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the price method.
                                def microsoft_graph_price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPrice::MicrosoftGraphPriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the priceDisc method.
                                def microsoft_graph_price_disc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPriceDisc::MicrosoftGraphPriceDiscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the priceMat method.
                                def microsoft_graph_price_mat()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPriceMat::MicrosoftGraphPriceMatRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the product method.
                                def microsoft_graph_product()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphProduct::MicrosoftGraphProductRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the proper method.
                                def microsoft_graph_proper()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphProper::MicrosoftGraphProperRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the pv method.
                                def microsoft_graph_pv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPv::MicrosoftGraphPvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the quartile_Exc method.
                                def microsoft_graph_quartile_exc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphQuartile_Exc::MicrosoftGraphQuartile_ExcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the quartile_Inc method.
                                def microsoft_graph_quartile_inc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphQuartile_Inc::MicrosoftGraphQuartile_IncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the quotient method.
                                def microsoft_graph_quotient()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphQuotient::MicrosoftGraphQuotientRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the radians method.
                                def microsoft_graph_radians()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRadians::MicrosoftGraphRadiansRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rand method.
                                def microsoft_graph_rand()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRand::MicrosoftGraphRandRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the randBetween method.
                                def microsoft_graph_rand_between()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRandBetween::MicrosoftGraphRandBetweenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rank_Avg method.
                                def microsoft_graph_rank_avg()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRank_Avg::MicrosoftGraphRank_AvgRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rank_Eq method.
                                def microsoft_graph_rank_eq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRank_Eq::MicrosoftGraphRank_EqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rate method.
                                def microsoft_graph_rate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRate::MicrosoftGraphRateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the received method.
                                def microsoft_graph_received()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphReceived::MicrosoftGraphReceivedRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the replace method.
                                def microsoft_graph_replace()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphReplace::MicrosoftGraphReplaceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the replaceB method.
                                def microsoft_graph_replace_b()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphReplaceB::MicrosoftGraphReplaceBRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rept method.
                                def microsoft_graph_rept()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRept::MicrosoftGraphReptRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the right method.
                                def microsoft_graph_right()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRight::MicrosoftGraphRightRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rightb method.
                                def microsoft_graph_rightb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRightb::MicrosoftGraphRightbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the roman method.
                                def microsoft_graph_roman()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRoman::MicrosoftGraphRomanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the round method.
                                def microsoft_graph_round()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRound::MicrosoftGraphRoundRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the roundDown method.
                                def microsoft_graph_round_down()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRoundDown::MicrosoftGraphRoundDownRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the roundUp method.
                                def microsoft_graph_round_up()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRoundUp::MicrosoftGraphRoundUpRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rows method.
                                def microsoft_graph_rows()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRows::MicrosoftGraphRowsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rri method.
                                def microsoft_graph_rri()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRri::MicrosoftGraphRriRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sec method.
                                def microsoft_graph_sec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSec::MicrosoftGraphSecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sech method.
                                def microsoft_graph_sech()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSech::MicrosoftGraphSechRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the second method.
                                def microsoft_graph_second()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSecond::MicrosoftGraphSecondRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the seriesSum method.
                                def microsoft_graph_series_sum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSeriesSum::MicrosoftGraphSeriesSumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sheet method.
                                def microsoft_graph_sheet()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSheet::MicrosoftGraphSheetRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sheets method.
                                def microsoft_graph_sheets()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSheets::MicrosoftGraphSheetsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sign method.
                                def microsoft_graph_sign()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSign::MicrosoftGraphSignRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sin method.
                                def microsoft_graph_sin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSin::MicrosoftGraphSinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sinh method.
                                def microsoft_graph_sinh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSinh::MicrosoftGraphSinhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the skew method.
                                def microsoft_graph_skew()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSkew::MicrosoftGraphSkewRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the skew_p method.
                                def microsoft_graph_skew_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSkew_p::MicrosoftGraphSkew_pRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sln method.
                                def microsoft_graph_sln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSln::MicrosoftGraphSlnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the small method.
                                def microsoft_graph_small()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSmall::MicrosoftGraphSmallRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sqrt method.
                                def microsoft_graph_sqrt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSqrt::MicrosoftGraphSqrtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sqrtPi method.
                                def microsoft_graph_sqrt_pi()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSqrtPi::MicrosoftGraphSqrtPiRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the standardize method.
                                def microsoft_graph_standardize()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStandardize::MicrosoftGraphStandardizeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDev_P method.
                                def microsoft_graph_st_dev_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDev_P::MicrosoftGraphStDev_PRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDev_S method.
                                def microsoft_graph_st_dev_s()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDev_S::MicrosoftGraphStDev_SRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDevA method.
                                def microsoft_graph_st_dev_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDevA::MicrosoftGraphStDevARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDevPA method.
                                def microsoft_graph_st_dev_p_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDevPA::MicrosoftGraphStDevPARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the substitute method.
                                def microsoft_graph_substitute()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSubstitute::MicrosoftGraphSubstituteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the subtotal method.
                                def microsoft_graph_subtotal()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSubtotal::MicrosoftGraphSubtotalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sum method.
                                def microsoft_graph_sum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSum::MicrosoftGraphSumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sumIf method.
                                def microsoft_graph_sum_if()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSumIf::MicrosoftGraphSumIfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sumIfs method.
                                def microsoft_graph_sum_ifs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSumIfs::MicrosoftGraphSumIfsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sumSq method.
                                def microsoft_graph_sum_sq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSumSq::MicrosoftGraphSumSqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the syd method.
                                def microsoft_graph_syd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSyd::MicrosoftGraphSydRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t method.
                                def microsoft_graph_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT::MicrosoftGraphTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Dist method.
                                def microsoft_graph_t_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Dist::MicrosoftGraphT_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Dist_2T method.
                                def microsoft_graph_t_dist_2_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Dist_2T::MicrosoftGraphT_Dist_2TRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Dist_RT method.
                                def microsoft_graph_t_dist_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Dist_RT::MicrosoftGraphT_Dist_RTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Inv method.
                                def microsoft_graph_t_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Inv::MicrosoftGraphT_InvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Inv_2T method.
                                def microsoft_graph_t_inv_2_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Inv_2T::MicrosoftGraphT_Inv_2TRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tan method.
                                def microsoft_graph_tan()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTan::MicrosoftGraphTanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tanh method.
                                def microsoft_graph_tanh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTanh::MicrosoftGraphTanhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tbillEq method.
                                def microsoft_graph_tbill_eq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTbillEq::MicrosoftGraphTbillEqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tbillPrice method.
                                def microsoft_graph_tbill_price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTbillPrice::MicrosoftGraphTbillPriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tbillYield method.
                                def microsoft_graph_tbill_yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTbillYield::MicrosoftGraphTbillYieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the text method.
                                def microsoft_graph_text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphText::MicrosoftGraphTextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the time method.
                                def microsoft_graph_time()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTime::MicrosoftGraphTimeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the timevalue method.
                                def microsoft_graph_timevalue()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTimevalue::MicrosoftGraphTimevalueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the today method.
                                def microsoft_graph_today()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphToday::MicrosoftGraphTodayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the trim method.
                                def microsoft_graph_trim()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrim::MicrosoftGraphTrimRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the trimMean method.
                                def microsoft_graph_trim_mean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrimMean::MicrosoftGraphTrimMeanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the true method.
                                def microsoft_graph_true()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrue::MicrosoftGraphTrueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the trunc method.
                                def microsoft_graph_trunc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrunc::MicrosoftGraphTruncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the type method.
                                def microsoft_graph_type()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphType::MicrosoftGraphTypeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the unichar method.
                                def microsoft_graph_unichar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUnichar::MicrosoftGraphUnicharRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the unicode method.
                                def microsoft_graph_unicode()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUnicode::MicrosoftGraphUnicodeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the upper method.
                                def microsoft_graph_upper()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUpper::MicrosoftGraphUpperRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the usdollar method.
                                def microsoft_graph_usdollar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUsdollar::MicrosoftGraphUsdollarRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the value method.
                                def microsoft_graph_value()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphValue::MicrosoftGraphValueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the var_P method.
                                def microsoft_graph_var_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVar_P::MicrosoftGraphVar_PRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the var_S method.
                                def microsoft_graph_var_s()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVar_S::MicrosoftGraphVar_SRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the varA method.
                                def microsoft_graph_var_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVarA::MicrosoftGraphVarARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the varPA method.
                                def microsoft_graph_var_p_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVarPA::MicrosoftGraphVarPARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the vdb method.
                                def microsoft_graph_vdb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVdb::MicrosoftGraphVdbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the vlookup method.
                                def microsoft_graph_vlookup()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVlookup::MicrosoftGraphVlookupRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the weekday method.
                                def microsoft_graph_weekday()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWeekday::MicrosoftGraphWeekdayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the weekNum method.
                                def microsoft_graph_week_num()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWeekNum::MicrosoftGraphWeekNumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the weibull_Dist method.
                                def microsoft_graph_weibull_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWeibull_Dist::MicrosoftGraphWeibull_DistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the workDay method.
                                def microsoft_graph_work_day()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWorkDay::MicrosoftGraphWorkDayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the workDay_Intl method.
                                def microsoft_graph_work_day_intl()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWorkDay_Intl::MicrosoftGraphWorkDay_IntlRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the xirr method.
                                def microsoft_graph_xirr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphXirr::MicrosoftGraphXirrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the xnpv method.
                                def microsoft_graph_xnpv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphXnpv::MicrosoftGraphXnpvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the xor method.
                                def microsoft_graph_xor()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphXor::MicrosoftGraphXorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the year method.
                                def microsoft_graph_year()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYear::MicrosoftGraphYearRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yearFrac method.
                                def microsoft_graph_year_frac()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYearFrac::MicrosoftGraphYearFracRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yield method.
                                def microsoft_graph_yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYield::MicrosoftGraphYieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yieldDisc method.
                                def microsoft_graph_yield_disc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYieldDisc::MicrosoftGraphYieldDiscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yieldMat method.
                                def microsoft_graph_yield_mat()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYieldMat::MicrosoftGraphYieldMatRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the z_Test method.
                                def microsoft_graph_z_test()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphZ_Test::MicrosoftGraphZ_TestRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                ## Instantiates a new FunctionsRequestBuilder and sets the default values.
                                ## @param pathParameters Path parameters for the request
                                ## @param requestAdapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                    @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/functions{?%24select,%24expand}"
                                    @request_adapter = request_adapter
                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                end
                                ## 
                                ## Delete navigation property functions for drives
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of void
                                ## 
                                def delete(request_configuration=nil)
                                    request_info = self.to_delete_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                end
                                ## 
                                ## Get functions from drives
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of workbook_functions
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookFunctions.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the navigation property functions in drives
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of workbook_functions
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookFunctions.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property functions for drives
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_delete_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :DELETE
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    return request_info
                                end
                                ## 
                                ## Get functions from drives
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_get_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :GET
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    return request_info
                                end
                                ## 
                                ## Update the navigation property functions in drives
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_patch_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PATCH
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                    return request_info
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class FunctionsRequestBuilderDeleteRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end

                                ## 
                                # Get functions from drives
                                class FunctionsRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Expand related entities
                                    attr_accessor :expand
                                    ## 
                                    # Select properties to be returned
                                    attr_accessor :select
                                    ## 
                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                    ## @param originalName The original query parameter name in the class.
                                    ## @return a string
                                    ## 
                                    def get_query_parameter(original_name)
                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                        case original_name
                                            when "expand"
                                                return "%24expand"
                                            when "select"
                                                return "%24select"
                                            else
                                                return original_name
                                        end
                                    end
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class FunctionsRequestBuilderGetRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                    ## 
                                    # Request query parameters
                                    attr_accessor :query_parameters
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class FunctionsRequestBuilderPatchRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
