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
require_relative './microsoft_graph_abs/abs_request_builder'
require_relative './microsoft_graph_accr_int/accr_int_request_builder'
require_relative './microsoft_graph_accr_int_m/accr_int_m_request_builder'
require_relative './microsoft_graph_acos/acos_request_builder'
require_relative './microsoft_graph_acosh/acosh_request_builder'
require_relative './microsoft_graph_acot/acot_request_builder'
require_relative './microsoft_graph_acoth/acoth_request_builder'
require_relative './microsoft_graph_amor_degrc/amor_degrc_request_builder'
require_relative './microsoft_graph_amor_linc/amor_linc_request_builder'
require_relative './microsoft_graph_and/and_request_builder'
require_relative './microsoft_graph_arabic/arabic_request_builder'
require_relative './microsoft_graph_areas/areas_request_builder'
require_relative './microsoft_graph_asc/asc_request_builder'
require_relative './microsoft_graph_asin/asin_request_builder'
require_relative './microsoft_graph_asinh/asinh_request_builder'
require_relative './microsoft_graph_atan/atan_request_builder'
require_relative './microsoft_graph_atan2/atan2_request_builder'
require_relative './microsoft_graph_atanh/atanh_request_builder'
require_relative './microsoft_graph_ave_dev/ave_dev_request_builder'
require_relative './microsoft_graph_average/average_request_builder'
require_relative './microsoft_graph_average_a/average_a_request_builder'
require_relative './microsoft_graph_average_if/average_if_request_builder'
require_relative './microsoft_graph_average_ifs/average_ifs_request_builder'
require_relative './microsoft_graph_baht_text/baht_text_request_builder'
require_relative './microsoft_graph_base/base_request_builder'
require_relative './microsoft_graph_bessel_i/bessel_i_request_builder'
require_relative './microsoft_graph_bessel_j/bessel_j_request_builder'
require_relative './microsoft_graph_bessel_k/bessel_k_request_builder'
require_relative './microsoft_graph_bessel_y/bessel_y_request_builder'
require_relative './microsoft_graph_beta_dist/beta_dist_request_builder'
require_relative './microsoft_graph_beta_inv/beta_inv_request_builder'
require_relative './microsoft_graph_bin2_dec/bin2_dec_request_builder'
require_relative './microsoft_graph_bin2_hex/bin2_hex_request_builder'
require_relative './microsoft_graph_bin2_oct/bin2_oct_request_builder'
require_relative './microsoft_graph_binom_dist/binom_dist_request_builder'
require_relative './microsoft_graph_binom_dist_range/binom_dist_range_request_builder'
require_relative './microsoft_graph_binom_inv/binom_inv_request_builder'
require_relative './microsoft_graph_bitand/bitand_request_builder'
require_relative './microsoft_graph_bitlshift/bitlshift_request_builder'
require_relative './microsoft_graph_bitor/bitor_request_builder'
require_relative './microsoft_graph_bitrshift/bitrshift_request_builder'
require_relative './microsoft_graph_bitxor/bitxor_request_builder'
require_relative './microsoft_graph_ceiling_math/ceiling_math_request_builder'
require_relative './microsoft_graph_ceiling_precise/ceiling_precise_request_builder'
require_relative './microsoft_graph_char/char_request_builder'
require_relative './microsoft_graph_chi_sq_dist/chi_sq_dist_request_builder'
require_relative './microsoft_graph_chi_sq_dist_r_t/chi_sq_dist_r_t_request_builder'
require_relative './microsoft_graph_chi_sq_inv/chi_sq_inv_request_builder'
require_relative './microsoft_graph_chi_sq_inv_r_t/chi_sq_inv_r_t_request_builder'
require_relative './microsoft_graph_choose/choose_request_builder'
require_relative './microsoft_graph_clean/clean_request_builder'
require_relative './microsoft_graph_code/code_request_builder'
require_relative './microsoft_graph_columns/columns_request_builder'
require_relative './microsoft_graph_combin/combin_request_builder'
require_relative './microsoft_graph_combina/combina_request_builder'
require_relative './microsoft_graph_complex/complex_request_builder'
require_relative './microsoft_graph_concatenate/concatenate_request_builder'
require_relative './microsoft_graph_confidence_norm/confidence_norm_request_builder'
require_relative './microsoft_graph_confidence_t/confidence_t_request_builder'
require_relative './microsoft_graph_convert/convert_request_builder'
require_relative './microsoft_graph_cos/cos_request_builder'
require_relative './microsoft_graph_cosh/cosh_request_builder'
require_relative './microsoft_graph_cot/cot_request_builder'
require_relative './microsoft_graph_coth/coth_request_builder'
require_relative './microsoft_graph_count/count_request_builder'
require_relative './microsoft_graph_count_a/count_a_request_builder'
require_relative './microsoft_graph_count_blank/count_blank_request_builder'
require_relative './microsoft_graph_count_if/count_if_request_builder'
require_relative './microsoft_graph_count_ifs/count_ifs_request_builder'
require_relative './microsoft_graph_coup_day_bs/coup_day_bs_request_builder'
require_relative './microsoft_graph_coup_days/coup_days_request_builder'
require_relative './microsoft_graph_coup_days_nc/coup_days_nc_request_builder'
require_relative './microsoft_graph_coup_ncd/coup_ncd_request_builder'
require_relative './microsoft_graph_coup_num/coup_num_request_builder'
require_relative './microsoft_graph_coup_pcd/coup_pcd_request_builder'
require_relative './microsoft_graph_csc/csc_request_builder'
require_relative './microsoft_graph_csch/csch_request_builder'
require_relative './microsoft_graph_cum_i_pmt/cum_i_pmt_request_builder'
require_relative './microsoft_graph_cum_princ/cum_princ_request_builder'
require_relative './microsoft_graph_date/date_request_builder'
require_relative './microsoft_graph_datevalue/datevalue_request_builder'
require_relative './microsoft_graph_daverage/daverage_request_builder'
require_relative './microsoft_graph_day/day_request_builder'
require_relative './microsoft_graph_days/days_request_builder'
require_relative './microsoft_graph_days360/days360_request_builder'
require_relative './microsoft_graph_db/db_request_builder'
require_relative './microsoft_graph_dbcs/dbcs_request_builder'
require_relative './microsoft_graph_dcount/dcount_request_builder'
require_relative './microsoft_graph_dcount_a/dcount_a_request_builder'
require_relative './microsoft_graph_ddb/ddb_request_builder'
require_relative './microsoft_graph_dec2_bin/dec2_bin_request_builder'
require_relative './microsoft_graph_dec2_hex/dec2_hex_request_builder'
require_relative './microsoft_graph_dec2_oct/dec2_oct_request_builder'
require_relative './microsoft_graph_decimal/decimal_request_builder'
require_relative './microsoft_graph_degrees/degrees_request_builder'
require_relative './microsoft_graph_delta/delta_request_builder'
require_relative './microsoft_graph_dev_sq/dev_sq_request_builder'
require_relative './microsoft_graph_dget/dget_request_builder'
require_relative './microsoft_graph_disc/disc_request_builder'
require_relative './microsoft_graph_dmax/dmax_request_builder'
require_relative './microsoft_graph_dmin/dmin_request_builder'
require_relative './microsoft_graph_dollar/dollar_request_builder'
require_relative './microsoft_graph_dollar_de/dollar_de_request_builder'
require_relative './microsoft_graph_dollar_fr/dollar_fr_request_builder'
require_relative './microsoft_graph_dproduct/dproduct_request_builder'
require_relative './microsoft_graph_dst_dev/dst_dev_request_builder'
require_relative './microsoft_graph_dst_dev_p/dst_dev_p_request_builder'
require_relative './microsoft_graph_dsum/dsum_request_builder'
require_relative './microsoft_graph_duration/duration_request_builder'
require_relative './microsoft_graph_dvar/dvar_request_builder'
require_relative './microsoft_graph_dvar_p/dvar_p_request_builder'
require_relative './microsoft_graph_ecma_ceiling/ecma_ceiling_request_builder'
require_relative './microsoft_graph_edate/edate_request_builder'
require_relative './microsoft_graph_effect/effect_request_builder'
require_relative './microsoft_graph_eo_month/eo_month_request_builder'
require_relative './microsoft_graph_erf/erf_request_builder'
require_relative './microsoft_graph_erf_c/erf_c_request_builder'
require_relative './microsoft_graph_erf_c_precise/erf_c_precise_request_builder'
require_relative './microsoft_graph_erf_precise/erf_precise_request_builder'
require_relative './microsoft_graph_error_type/error_type_request_builder'
require_relative './microsoft_graph_even/even_request_builder'
require_relative './microsoft_graph_exact/exact_request_builder'
require_relative './microsoft_graph_exp/exp_request_builder'
require_relative './microsoft_graph_expon_dist/expon_dist_request_builder'
require_relative './microsoft_graph_fact/fact_request_builder'
require_relative './microsoft_graph_fact_double/fact_double_request_builder'
require_relative './microsoft_graph_false/false_request_builder'
require_relative './microsoft_graph_find/find_request_builder'
require_relative './microsoft_graph_find_b/find_b_request_builder'
require_relative './microsoft_graph_fisher/fisher_request_builder'
require_relative './microsoft_graph_fisher_inv/fisher_inv_request_builder'
require_relative './microsoft_graph_fixed/fixed_request_builder'
require_relative './microsoft_graph_floor_math/floor_math_request_builder'
require_relative './microsoft_graph_floor_precise/floor_precise_request_builder'
require_relative './microsoft_graph_fv/fv_request_builder'
require_relative './microsoft_graph_fvschedule/fvschedule_request_builder'
require_relative './microsoft_graph_f_dist/f_dist_request_builder'
require_relative './microsoft_graph_f_dist_r_t/f_dist_r_t_request_builder'
require_relative './microsoft_graph_f_inv/f_inv_request_builder'
require_relative './microsoft_graph_f_inv_r_t/f_inv_r_t_request_builder'
require_relative './microsoft_graph_gamma/gamma_request_builder'
require_relative './microsoft_graph_gamma_ln/gamma_ln_request_builder'
require_relative './microsoft_graph_gamma_ln_precise/gamma_ln_precise_request_builder'
require_relative './microsoft_graph_gamma_dist/gamma_dist_request_builder'
require_relative './microsoft_graph_gamma_inv/gamma_inv_request_builder'
require_relative './microsoft_graph_gauss/gauss_request_builder'
require_relative './microsoft_graph_gcd/gcd_request_builder'
require_relative './microsoft_graph_geo_mean/geo_mean_request_builder'
require_relative './microsoft_graph_ge_step/ge_step_request_builder'
require_relative './microsoft_graph_har_mean/har_mean_request_builder'
require_relative './microsoft_graph_hex2_bin/hex2_bin_request_builder'
require_relative './microsoft_graph_hex2_dec/hex2_dec_request_builder'
require_relative './microsoft_graph_hex2_oct/hex2_oct_request_builder'
require_relative './microsoft_graph_hlookup/hlookup_request_builder'
require_relative './microsoft_graph_hour/hour_request_builder'
require_relative './microsoft_graph_hyperlink/hyperlink_request_builder'
require_relative './microsoft_graph_hyp_geom_dist/hyp_geom_dist_request_builder'
require_relative './microsoft_graph_if/if_request_builder'
require_relative './microsoft_graph_im_abs/im_abs_request_builder'
require_relative './microsoft_graph_imaginary/imaginary_request_builder'
require_relative './microsoft_graph_im_argument/im_argument_request_builder'
require_relative './microsoft_graph_im_conjugate/im_conjugate_request_builder'
require_relative './microsoft_graph_im_cos/im_cos_request_builder'
require_relative './microsoft_graph_im_cosh/im_cosh_request_builder'
require_relative './microsoft_graph_im_cot/im_cot_request_builder'
require_relative './microsoft_graph_im_csc/im_csc_request_builder'
require_relative './microsoft_graph_im_csch/im_csch_request_builder'
require_relative './microsoft_graph_im_div/im_div_request_builder'
require_relative './microsoft_graph_im_exp/im_exp_request_builder'
require_relative './microsoft_graph_im_ln/im_ln_request_builder'
require_relative './microsoft_graph_im_log10/im_log10_request_builder'
require_relative './microsoft_graph_im_log2/im_log2_request_builder'
require_relative './microsoft_graph_im_power/im_power_request_builder'
require_relative './microsoft_graph_im_product/im_product_request_builder'
require_relative './microsoft_graph_im_real/im_real_request_builder'
require_relative './microsoft_graph_im_sec/im_sec_request_builder'
require_relative './microsoft_graph_im_sech/im_sech_request_builder'
require_relative './microsoft_graph_im_sin/im_sin_request_builder'
require_relative './microsoft_graph_im_sinh/im_sinh_request_builder'
require_relative './microsoft_graph_im_sqrt/im_sqrt_request_builder'
require_relative './microsoft_graph_im_sub/im_sub_request_builder'
require_relative './microsoft_graph_im_sum/im_sum_request_builder'
require_relative './microsoft_graph_im_tan/im_tan_request_builder'
require_relative './microsoft_graph_int/int_request_builder'
require_relative './microsoft_graph_int_rate/int_rate_request_builder'
require_relative './microsoft_graph_ipmt/ipmt_request_builder'
require_relative './microsoft_graph_irr/irr_request_builder'
require_relative './microsoft_graph_is_err/is_err_request_builder'
require_relative './microsoft_graph_is_error/is_error_request_builder'
require_relative './microsoft_graph_is_even/is_even_request_builder'
require_relative './microsoft_graph_is_formula/is_formula_request_builder'
require_relative './microsoft_graph_is_logical/is_logical_request_builder'
require_relative './microsoft_graph_is_n_a/is_n_a_request_builder'
require_relative './microsoft_graph_is_non_text/is_non_text_request_builder'
require_relative './microsoft_graph_is_number/is_number_request_builder'
require_relative './microsoft_graph_is_odd/is_odd_request_builder'
require_relative './microsoft_graph_iso_week_num/iso_week_num_request_builder'
require_relative './microsoft_graph_iso_ceiling/iso_ceiling_request_builder'
require_relative './microsoft_graph_ispmt/ispmt_request_builder'
require_relative './microsoft_graph_isref/isref_request_builder'
require_relative './microsoft_graph_is_text/is_text_request_builder'
require_relative './microsoft_graph_kurt/kurt_request_builder'
require_relative './microsoft_graph_large/large_request_builder'
require_relative './microsoft_graph_lcm/lcm_request_builder'
require_relative './microsoft_graph_left/left_request_builder'
require_relative './microsoft_graph_leftb/leftb_request_builder'
require_relative './microsoft_graph_len/len_request_builder'
require_relative './microsoft_graph_lenb/lenb_request_builder'
require_relative './microsoft_graph_ln/ln_request_builder'
require_relative './microsoft_graph_log/log_request_builder'
require_relative './microsoft_graph_log10/log10_request_builder'
require_relative './microsoft_graph_log_norm_dist/log_norm_dist_request_builder'
require_relative './microsoft_graph_log_norm_inv/log_norm_inv_request_builder'
require_relative './microsoft_graph_lookup/lookup_request_builder'
require_relative './microsoft_graph_lower/lower_request_builder'
require_relative './microsoft_graph_match/match_request_builder'
require_relative './microsoft_graph_max/max_request_builder'
require_relative './microsoft_graph_max_a/max_a_request_builder'
require_relative './microsoft_graph_mduration/mduration_request_builder'
require_relative './microsoft_graph_median/median_request_builder'
require_relative './microsoft_graph_mid/mid_request_builder'
require_relative './microsoft_graph_midb/midb_request_builder'
require_relative './microsoft_graph_min/min_request_builder'
require_relative './microsoft_graph_min_a/min_a_request_builder'
require_relative './microsoft_graph_minute/minute_request_builder'
require_relative './microsoft_graph_mirr/mirr_request_builder'
require_relative './microsoft_graph_mod/mod_request_builder'
require_relative './microsoft_graph_month/month_request_builder'
require_relative './microsoft_graph_mround/mround_request_builder'
require_relative './microsoft_graph_multi_nomial/multi_nomial_request_builder'
require_relative './microsoft_graph_n/n_request_builder'
require_relative './microsoft_graph_na/na_request_builder'
require_relative './microsoft_graph_neg_binom_dist/neg_binom_dist_request_builder'
require_relative './microsoft_graph_network_days/network_days_request_builder'
require_relative './microsoft_graph_network_days_intl/network_days_intl_request_builder'
require_relative './microsoft_graph_nominal/nominal_request_builder'
require_relative './microsoft_graph_norm_dist/norm_dist_request_builder'
require_relative './microsoft_graph_norm_inv/norm_inv_request_builder'
require_relative './microsoft_graph_norm_s_dist/norm_s_dist_request_builder'
require_relative './microsoft_graph_norm_s_inv/norm_s_inv_request_builder'
require_relative './microsoft_graph_not/not_request_builder'
require_relative './microsoft_graph_now/now_request_builder'
require_relative './microsoft_graph_nper/nper_request_builder'
require_relative './microsoft_graph_npv/npv_request_builder'
require_relative './microsoft_graph_number_value/number_value_request_builder'
require_relative './microsoft_graph_oct2_bin/oct2_bin_request_builder'
require_relative './microsoft_graph_oct2_dec/oct2_dec_request_builder'
require_relative './microsoft_graph_oct2_hex/oct2_hex_request_builder'
require_relative './microsoft_graph_odd/odd_request_builder'
require_relative './microsoft_graph_odd_f_price/odd_f_price_request_builder'
require_relative './microsoft_graph_odd_f_yield/odd_f_yield_request_builder'
require_relative './microsoft_graph_odd_l_price/odd_l_price_request_builder'
require_relative './microsoft_graph_odd_l_yield/odd_l_yield_request_builder'
require_relative './microsoft_graph_or/or_request_builder'
require_relative './microsoft_graph_pduration/pduration_request_builder'
require_relative './microsoft_graph_percentile_exc/percentile_exc_request_builder'
require_relative './microsoft_graph_percentile_inc/percentile_inc_request_builder'
require_relative './microsoft_graph_percent_rank_exc/percent_rank_exc_request_builder'
require_relative './microsoft_graph_percent_rank_inc/percent_rank_inc_request_builder'
require_relative './microsoft_graph_permut/permut_request_builder'
require_relative './microsoft_graph_permutationa/permutationa_request_builder'
require_relative './microsoft_graph_phi/phi_request_builder'
require_relative './microsoft_graph_pi/pi_request_builder'
require_relative './microsoft_graph_pmt/pmt_request_builder'
require_relative './microsoft_graph_poisson_dist/poisson_dist_request_builder'
require_relative './microsoft_graph_power/power_request_builder'
require_relative './microsoft_graph_ppmt/ppmt_request_builder'
require_relative './microsoft_graph_price/price_request_builder'
require_relative './microsoft_graph_price_disc/price_disc_request_builder'
require_relative './microsoft_graph_price_mat/price_mat_request_builder'
require_relative './microsoft_graph_product/product_request_builder'
require_relative './microsoft_graph_proper/proper_request_builder'
require_relative './microsoft_graph_pv/pv_request_builder'
require_relative './microsoft_graph_quartile_exc/quartile_exc_request_builder'
require_relative './microsoft_graph_quartile_inc/quartile_inc_request_builder'
require_relative './microsoft_graph_quotient/quotient_request_builder'
require_relative './microsoft_graph_radians/radians_request_builder'
require_relative './microsoft_graph_rand/rand_request_builder'
require_relative './microsoft_graph_rand_between/rand_between_request_builder'
require_relative './microsoft_graph_rank_avg/rank_avg_request_builder'
require_relative './microsoft_graph_rank_eq/rank_eq_request_builder'
require_relative './microsoft_graph_rate/rate_request_builder'
require_relative './microsoft_graph_received/received_request_builder'
require_relative './microsoft_graph_replace/replace_request_builder'
require_relative './microsoft_graph_replace_b/replace_b_request_builder'
require_relative './microsoft_graph_rept/rept_request_builder'
require_relative './microsoft_graph_right/right_request_builder'
require_relative './microsoft_graph_rightb/rightb_request_builder'
require_relative './microsoft_graph_roman/roman_request_builder'
require_relative './microsoft_graph_round/round_request_builder'
require_relative './microsoft_graph_round_down/round_down_request_builder'
require_relative './microsoft_graph_round_up/round_up_request_builder'
require_relative './microsoft_graph_rows/rows_request_builder'
require_relative './microsoft_graph_rri/rri_request_builder'
require_relative './microsoft_graph_sec/sec_request_builder'
require_relative './microsoft_graph_sech/sech_request_builder'
require_relative './microsoft_graph_second/second_request_builder'
require_relative './microsoft_graph_series_sum/series_sum_request_builder'
require_relative './microsoft_graph_sheet/sheet_request_builder'
require_relative './microsoft_graph_sheets/sheets_request_builder'
require_relative './microsoft_graph_sign/sign_request_builder'
require_relative './microsoft_graph_sin/sin_request_builder'
require_relative './microsoft_graph_sinh/sinh_request_builder'
require_relative './microsoft_graph_skew/skew_request_builder'
require_relative './microsoft_graph_skew_p/skew_p_request_builder'
require_relative './microsoft_graph_sln/sln_request_builder'
require_relative './microsoft_graph_small/small_request_builder'
require_relative './microsoft_graph_sqrt/sqrt_request_builder'
require_relative './microsoft_graph_sqrt_pi/sqrt_pi_request_builder'
require_relative './microsoft_graph_standardize/standardize_request_builder'
require_relative './microsoft_graph_st_dev_a/st_dev_a_request_builder'
require_relative './microsoft_graph_st_dev_p_a/st_dev_p_a_request_builder'
require_relative './microsoft_graph_st_dev_p/st_dev_p_request_builder'
require_relative './microsoft_graph_st_dev_s/st_dev_s_request_builder'
require_relative './microsoft_graph_substitute/substitute_request_builder'
require_relative './microsoft_graph_subtotal/subtotal_request_builder'
require_relative './microsoft_graph_sum/sum_request_builder'
require_relative './microsoft_graph_sum_if/sum_if_request_builder'
require_relative './microsoft_graph_sum_ifs/sum_ifs_request_builder'
require_relative './microsoft_graph_sum_sq/sum_sq_request_builder'
require_relative './microsoft_graph_syd/syd_request_builder'
require_relative './microsoft_graph_t/t_request_builder'
require_relative './microsoft_graph_tan/tan_request_builder'
require_relative './microsoft_graph_tanh/tanh_request_builder'
require_relative './microsoft_graph_tbill_eq/tbill_eq_request_builder'
require_relative './microsoft_graph_tbill_price/tbill_price_request_builder'
require_relative './microsoft_graph_tbill_yield/tbill_yield_request_builder'
require_relative './microsoft_graph_text/text_request_builder'
require_relative './microsoft_graph_time/time_request_builder'
require_relative './microsoft_graph_timevalue/timevalue_request_builder'
require_relative './microsoft_graph_today/today_request_builder'
require_relative './microsoft_graph_trim/trim_request_builder'
require_relative './microsoft_graph_trim_mean/trim_mean_request_builder'
require_relative './microsoft_graph_true/true_request_builder'
require_relative './microsoft_graph_trunc/trunc_request_builder'
require_relative './microsoft_graph_type/type_request_builder'
require_relative './microsoft_graph_t_dist/t_dist_request_builder'
require_relative './microsoft_graph_t_dist_2_t/t_dist_2_t_request_builder'
require_relative './microsoft_graph_t_dist_r_t/t_dist_r_t_request_builder'
require_relative './microsoft_graph_t_inv/t_inv_request_builder'
require_relative './microsoft_graph_t_inv_2_t/t_inv_2_t_request_builder'
require_relative './microsoft_graph_unichar/unichar_request_builder'
require_relative './microsoft_graph_unicode/unicode_request_builder'
require_relative './microsoft_graph_upper/upper_request_builder'
require_relative './microsoft_graph_usdollar/usdollar_request_builder'
require_relative './microsoft_graph_value/value_request_builder'
require_relative './microsoft_graph_var_a/var_a_request_builder'
require_relative './microsoft_graph_var_p_a/var_p_a_request_builder'
require_relative './microsoft_graph_var_p/var_p_request_builder'
require_relative './microsoft_graph_var_s/var_s_request_builder'
require_relative './microsoft_graph_vdb/vdb_request_builder'
require_relative './microsoft_graph_vlookup/vlookup_request_builder'
require_relative './microsoft_graph_weekday/weekday_request_builder'
require_relative './microsoft_graph_week_num/week_num_request_builder'
require_relative './microsoft_graph_weibull_dist/weibull_dist_request_builder'
require_relative './microsoft_graph_work_day/work_day_request_builder'
require_relative './microsoft_graph_work_day_intl/work_day_intl_request_builder'
require_relative './microsoft_graph_xirr/xirr_request_builder'
require_relative './microsoft_graph_xnpv/xnpv_request_builder'
require_relative './microsoft_graph_xor/xor_request_builder'
require_relative './microsoft_graph_year/year_request_builder'
require_relative './microsoft_graph_year_frac/year_frac_request_builder'
require_relative './microsoft_graph_yield/yield_request_builder'
require_relative './microsoft_graph_yield_disc/yield_disc_request_builder'
require_relative './microsoft_graph_yield_mat/yield_mat_request_builder'
require_relative './microsoft_graph_z_test/z_test_request_builder'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions
    ## 
    # Provides operations to manage the functions property of the microsoft.graph.workbook entity.
    class FunctionsRequestBuilder
        
        ## 
        # Provides operations to call the abs method.
        def microsoft_graph_abs()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAbs::AbsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the accrInt method.
        def microsoft_graph_accr_int()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAccrInt::AccrIntRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the accrIntM method.
        def microsoft_graph_accr_int_m()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAccrIntM::AccrIntMRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the acos method.
        def microsoft_graph_acos()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcos::AcosRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the acosh method.
        def microsoft_graph_acosh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcosh::AcoshRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the acot method.
        def microsoft_graph_acot()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcot::AcotRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the acoth method.
        def microsoft_graph_acoth()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAcoth::AcothRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the amorDegrc method.
        def microsoft_graph_amor_degrc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAmorDegrc::AmorDegrcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the amorLinc method.
        def microsoft_graph_amor_linc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAmorLinc::AmorLincRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the and method.
        def microsoft_graph_and()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAnd::AndRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the arabic method.
        def microsoft_graph_arabic()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphArabic::ArabicRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the areas method.
        def microsoft_graph_areas()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAreas::AreasRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the asc method.
        def microsoft_graph_asc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAsc::AscRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the asin method.
        def microsoft_graph_asin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAsin::AsinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the asinh method.
        def microsoft_graph_asinh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAsinh::AsinhRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the atan method.
        def microsoft_graph_atan()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAtan::AtanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the atan2 method.
        def microsoft_graph_atan2()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAtan2::Atan2RequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the atanh method.
        def microsoft_graph_atanh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAtanh::AtanhRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the aveDev method.
        def microsoft_graph_ave_dev()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAveDev::AveDevRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the average method.
        def microsoft_graph_average()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverage::AverageRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the averageA method.
        def microsoft_graph_average_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverageA::AverageARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the averageIf method.
        def microsoft_graph_average_if()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverageIf::AverageIfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the averageIfs method.
        def microsoft_graph_average_ifs()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphAverageIfs::AverageIfsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bahtText method.
        def microsoft_graph_baht_text()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBahtText::BahtTextRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the base method.
        def microsoft_graph_base()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBase::BaseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the besselI method.
        def microsoft_graph_bessel_i()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselI::BesselIRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the besselJ method.
        def microsoft_graph_bessel_j()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselJ::BesselJRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the besselK method.
        def microsoft_graph_bessel_k()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselK::BesselKRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the besselY method.
        def microsoft_graph_bessel_y()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBesselY::BesselYRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the beta_Dist method.
        def microsoft_graph_beta_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBeta_Dist::Beta_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the beta_Inv method.
        def microsoft_graph_beta_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBeta_Inv::Beta_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bin2Dec method.
        def microsoft_graph_bin2_dec()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBin2Dec::Bin2DecRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bin2Hex method.
        def microsoft_graph_bin2_hex()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBin2Hex::Bin2HexRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bin2Oct method.
        def microsoft_graph_bin2_oct()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBin2Oct::Bin2OctRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the binom_Dist method.
        def microsoft_graph_binom_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBinom_Dist::Binom_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the binom_Dist_Range method.
        def microsoft_graph_binom_dist_range()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBinom_Dist_Range::Binom_Dist_RangeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the binom_Inv method.
        def microsoft_graph_binom_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBinom_Inv::Binom_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bitand method.
        def microsoft_graph_bitand()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitand::BitandRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bitlshift method.
        def microsoft_graph_bitlshift()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitlshift::BitlshiftRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bitor method.
        def microsoft_graph_bitor()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitor::BitorRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bitrshift method.
        def microsoft_graph_bitrshift()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitrshift::BitrshiftRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bitxor method.
        def microsoft_graph_bitxor()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBitxor::BitxorRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ceiling_Math method.
        def microsoft_graph_ceiling_math()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCeiling_Math::Ceiling_MathRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ceiling_Precise method.
        def microsoft_graph_ceiling_precise()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCeiling_Precise::Ceiling_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the char method.
        def microsoft_graph_char()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChar::CharRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the chiSq_Dist method.
        def microsoft_graph_chi_sq_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Dist::ChiSq_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the chiSq_Dist_RT method.
        def microsoft_graph_chi_sq_dist_r_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Dist_RT::ChiSq_Dist_RTRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the chiSq_Inv method.
        def microsoft_graph_chi_sq_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Inv::ChiSq_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the chiSq_Inv_RT method.
        def microsoft_graph_chi_sq_inv_r_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChiSq_Inv_RT::ChiSq_Inv_RTRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the choose method.
        def microsoft_graph_choose()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphChoose::ChooseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the clean method.
        def microsoft_graph_clean()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphClean::CleanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the code method.
        def microsoft_graph_code()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCode::CodeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the columns method.
        def microsoft_graph_columns()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphColumns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the combin method.
        def microsoft_graph_combin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCombin::CombinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the combina method.
        def microsoft_graph_combina()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCombina::CombinaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the complex method.
        def microsoft_graph_complex()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphComplex::ComplexRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the concatenate method.
        def microsoft_graph_concatenate()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConcatenate::ConcatenateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the confidence_Norm method.
        def microsoft_graph_confidence_norm()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConfidence_Norm::Confidence_NormRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the confidence_T method.
        def microsoft_graph_confidence_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConfidence_T::Confidence_TRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the convert method.
        def microsoft_graph_convert()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphConvert::ConvertRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the cos method.
        def microsoft_graph_cos()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCos::CosRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the cosh method.
        def microsoft_graph_cosh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCosh::CoshRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the cot method.
        def microsoft_graph_cot()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCot::CotRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the coth method.
        def microsoft_graph_coth()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoth::CothRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the count method.
        def microsoft_graph_count()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCount::CountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the countA method.
        def microsoft_graph_count_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountA::CountARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the countBlank method.
        def microsoft_graph_count_blank()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountBlank::CountBlankRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the countIf method.
        def microsoft_graph_count_if()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountIf::CountIfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the countIfs method.
        def microsoft_graph_count_ifs()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCountIfs::CountIfsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the coupDayBs method.
        def microsoft_graph_coup_day_bs()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupDayBs::CoupDayBsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the coupDays method.
        def microsoft_graph_coup_days()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupDays::CoupDaysRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the coupDaysNc method.
        def microsoft_graph_coup_days_nc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupDaysNc::CoupDaysNcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the coupNcd method.
        def microsoft_graph_coup_ncd()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupNcd::CoupNcdRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the coupNum method.
        def microsoft_graph_coup_num()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupNum::CoupNumRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the coupPcd method.
        def microsoft_graph_coup_pcd()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCoupPcd::CoupPcdRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the csc method.
        def microsoft_graph_csc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCsc::CscRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the csch method.
        def microsoft_graph_csch()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCsch::CschRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the cumIPmt method.
        def microsoft_graph_cum_i_pmt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCumIPmt::CumIPmtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the cumPrinc method.
        def microsoft_graph_cum_princ()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphCumPrinc::CumPrincRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the date method.
        def microsoft_graph_date()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDate::DateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the datevalue method.
        def microsoft_graph_datevalue()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDatevalue::DatevalueRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the daverage method.
        def microsoft_graph_daverage()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDaverage::DaverageRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the day method.
        def microsoft_graph_day()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDay::DayRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the days method.
        def microsoft_graph_days()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDays::DaysRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the days360 method.
        def microsoft_graph_days360()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDays360::Days360RequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the db method.
        def microsoft_graph_db()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDb::DbRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dbcs method.
        def microsoft_graph_dbcs()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDbcs::DbcsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dcount method.
        def microsoft_graph_dcount()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDcount::DcountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dcountA method.
        def microsoft_graph_dcount_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDcountA::DcountARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ddb method.
        def microsoft_graph_ddb()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDdb::DdbRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dec2Bin method.
        def microsoft_graph_dec2_bin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDec2Bin::Dec2BinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dec2Hex method.
        def microsoft_graph_dec2_hex()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDec2Hex::Dec2HexRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dec2Oct method.
        def microsoft_graph_dec2_oct()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDec2Oct::Dec2OctRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the decimal method.
        def microsoft_graph_decimal()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDecimal::DecimalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the degrees method.
        def microsoft_graph_degrees()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDegrees::DegreesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the delta method.
        def microsoft_graph_delta()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDelta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the devSq method.
        def microsoft_graph_dev_sq()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDevSq::DevSqRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dget method.
        def microsoft_graph_dget()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDget::DgetRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the disc method.
        def microsoft_graph_disc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDisc::DiscRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dmax method.
        def microsoft_graph_dmax()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDmax::DmaxRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dmin method.
        def microsoft_graph_dmin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDmin::DminRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dollar method.
        def microsoft_graph_dollar()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDollar::DollarRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dollarDe method.
        def microsoft_graph_dollar_de()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDollarDe::DollarDeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dollarFr method.
        def microsoft_graph_dollar_fr()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDollarFr::DollarFrRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dproduct method.
        def microsoft_graph_dproduct()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDproduct::DproductRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dstDev method.
        def microsoft_graph_dst_dev()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDstDev::DstDevRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dstDevP method.
        def microsoft_graph_dst_dev_p()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDstDevP::DstDevPRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dsum method.
        def microsoft_graph_dsum()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDsum::DsumRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the duration method.
        def microsoft_graph_duration()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDuration::DurationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dvar method.
        def microsoft_graph_dvar()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDvar::DvarRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the dvarP method.
        def microsoft_graph_dvar_p()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDvarP::DvarPRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ecma_Ceiling method.
        def microsoft_graph_ecma_ceiling()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEcma_Ceiling::Ecma_CeilingRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the edate method.
        def microsoft_graph_edate()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEdate::EdateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the effect method.
        def microsoft_graph_effect()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEffect::EffectRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the eoMonth method.
        def microsoft_graph_eo_month()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEoMonth::EoMonthRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the erf method.
        def microsoft_graph_erf()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErf::ErfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the erf_Precise method.
        def microsoft_graph_erf_precise()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErf_Precise::Erf_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the erfC method.
        def microsoft_graph_erf_c()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErfC::ErfCRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the erfC_Precise method.
        def microsoft_graph_erf_c_precise()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphErfC_Precise::ErfC_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the error_Type method.
        def microsoft_graph_error_type()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphError_Type::Error_TypeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the even method.
        def microsoft_graph_even()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphEven::EvenRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the exact method.
        def microsoft_graph_exact()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphExact::ExactRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the exp method.
        def microsoft_graph_exp()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphExp::ExpRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the expon_Dist method.
        def microsoft_graph_expon_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphExpon_Dist::Expon_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the f_Dist method.
        def microsoft_graph_f_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Dist::F_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the f_Dist_RT method.
        def microsoft_graph_f_dist_r_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Dist_RT::F_Dist_RTRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the f_Inv method.
        def microsoft_graph_f_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Inv::F_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the f_Inv_RT method.
        def microsoft_graph_f_inv_r_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphF_Inv_RT::F_Inv_RTRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the fact method.
        def microsoft_graph_fact()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFact::FactRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the factDouble method.
        def microsoft_graph_fact_double()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFactDouble::FactDoubleRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the false method.
        def microsoft_graph_false()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFalse::FalseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the find method.
        def microsoft_graph_find()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFind::FindRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the findB method.
        def microsoft_graph_find_b()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFindB::FindBRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the fisher method.
        def microsoft_graph_fisher()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFisher::FisherRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the fisherInv method.
        def microsoft_graph_fisher_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFisherInv::FisherInvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the fixed method.
        def microsoft_graph_fixed()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFixed::FixedRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the floor_Math method.
        def microsoft_graph_floor_math()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFloor_Math::Floor_MathRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the floor_Precise method.
        def microsoft_graph_floor_precise()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFloor_Precise::Floor_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the fv method.
        def microsoft_graph_fv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFv::FvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the fvschedule method.
        def microsoft_graph_fvschedule()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphFvschedule::FvscheduleRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the gamma method.
        def microsoft_graph_gamma()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGamma::GammaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the gamma_Dist method.
        def microsoft_graph_gamma_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGamma_Dist::Gamma_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the gamma_Inv method.
        def microsoft_graph_gamma_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGamma_Inv::Gamma_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the gammaLn method.
        def microsoft_graph_gamma_ln()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGammaLn::GammaLnRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the gammaLn_Precise method.
        def microsoft_graph_gamma_ln_precise()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGammaLn_Precise::GammaLn_PreciseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the gauss method.
        def microsoft_graph_gauss()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGauss::GaussRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the gcd method.
        def microsoft_graph_gcd()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGcd::GcdRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the geoMean method.
        def microsoft_graph_geo_mean()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGeoMean::GeoMeanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the geStep method.
        def microsoft_graph_ge_step()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphGeStep::GeStepRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the harMean method.
        def microsoft_graph_har_mean()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHarMean::HarMeanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the hex2Bin method.
        def microsoft_graph_hex2_bin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHex2Bin::Hex2BinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the hex2Dec method.
        def microsoft_graph_hex2_dec()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHex2Dec::Hex2DecRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the hex2Oct method.
        def microsoft_graph_hex2_oct()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHex2Oct::Hex2OctRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the hlookup method.
        def microsoft_graph_hlookup()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHlookup::HlookupRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the hour method.
        def microsoft_graph_hour()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHour::HourRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the hyperlink method.
        def microsoft_graph_hyperlink()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHyperlink::HyperlinkRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the hypGeom_Dist method.
        def microsoft_graph_hyp_geom_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphHypGeom_Dist::HypGeom_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the if method.
        def microsoft_graph_if()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIf::IfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imAbs method.
        def microsoft_graph_im_abs()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImAbs::ImAbsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imaginary method.
        def microsoft_graph_imaginary()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImaginary::ImaginaryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imArgument method.
        def microsoft_graph_im_argument()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImArgument::ImArgumentRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imConjugate method.
        def microsoft_graph_im_conjugate()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImConjugate::ImConjugateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imCos method.
        def microsoft_graph_im_cos()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCos::ImCosRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imCosh method.
        def microsoft_graph_im_cosh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCosh::ImCoshRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imCot method.
        def microsoft_graph_im_cot()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCot::ImCotRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imCsc method.
        def microsoft_graph_im_csc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCsc::ImCscRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imCsch method.
        def microsoft_graph_im_csch()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImCsch::ImCschRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imDiv method.
        def microsoft_graph_im_div()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImDiv::ImDivRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imExp method.
        def microsoft_graph_im_exp()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImExp::ImExpRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imLn method.
        def microsoft_graph_im_ln()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImLn::ImLnRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imLog10 method.
        def microsoft_graph_im_log10()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImLog10::ImLog10RequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imLog2 method.
        def microsoft_graph_im_log2()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImLog2::ImLog2RequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imPower method.
        def microsoft_graph_im_power()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImPower::ImPowerRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imProduct method.
        def microsoft_graph_im_product()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImProduct::ImProductRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imReal method.
        def microsoft_graph_im_real()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImReal::ImRealRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imSec method.
        def microsoft_graph_im_sec()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSec::ImSecRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imSech method.
        def microsoft_graph_im_sech()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSech::ImSechRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imSin method.
        def microsoft_graph_im_sin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSin::ImSinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imSinh method.
        def microsoft_graph_im_sinh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSinh::ImSinhRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imSqrt method.
        def microsoft_graph_im_sqrt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSqrt::ImSqrtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imSub method.
        def microsoft_graph_im_sub()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSub::ImSubRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imSum method.
        def microsoft_graph_im_sum()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImSum::ImSumRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the imTan method.
        def microsoft_graph_im_tan()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphImTan::ImTanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the int method.
        def microsoft_graph_int()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphInt::IntRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the intRate method.
        def microsoft_graph_int_rate()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIntRate::IntRateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ipmt method.
        def microsoft_graph_ipmt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIpmt::IpmtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the irr method.
        def microsoft_graph_irr()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIrr::IrrRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isErr method.
        def microsoft_graph_is_err()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsErr::IsErrRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isError method.
        def microsoft_graph_is_error()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsError::IsErrorRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isEven method.
        def microsoft_graph_is_even()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsEven::IsEvenRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isFormula method.
        def microsoft_graph_is_formula()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsFormula::IsFormulaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isLogical method.
        def microsoft_graph_is_logical()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsLogical::IsLogicalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isNA method.
        def microsoft_graph_is_n_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsNA::IsNARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isNonText method.
        def microsoft_graph_is_non_text()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsNonText::IsNonTextRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isNumber method.
        def microsoft_graph_is_number()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsNumber::IsNumberRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the iso_Ceiling method.
        def microsoft_graph_iso_ceiling()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIso_Ceiling::Iso_CeilingRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isOdd method.
        def microsoft_graph_is_odd()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsOdd::IsOddRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isoWeekNum method.
        def microsoft_graph_iso_week_num()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsoWeekNum::IsoWeekNumRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ispmt method.
        def microsoft_graph_ispmt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIspmt::IspmtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isref method.
        def microsoft_graph_isref()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsref::IsrefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isText method.
        def microsoft_graph_is_text()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphIsText::IsTextRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the kurt method.
        def microsoft_graph_kurt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphKurt::KurtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the large method.
        def microsoft_graph_large()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLarge::LargeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the lcm method.
        def microsoft_graph_lcm()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLcm::LcmRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the left method.
        def microsoft_graph_left()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLeft::LeftRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the leftb method.
        def microsoft_graph_leftb()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLeftb::LeftbRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the len method.
        def microsoft_graph_len()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLen::LenRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the lenb method.
        def microsoft_graph_lenb()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLenb::LenbRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ln method.
        def microsoft_graph_ln()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLn::LnRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the log method.
        def microsoft_graph_log()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLog::LogRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the log10 method.
        def microsoft_graph_log10()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLog10::Log10RequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the logNorm_Dist method.
        def microsoft_graph_log_norm_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLogNorm_Dist::LogNorm_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the logNorm_Inv method.
        def microsoft_graph_log_norm_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLogNorm_Inv::LogNorm_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the lookup method.
        def microsoft_graph_lookup()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLookup::LookupRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the lower method.
        def microsoft_graph_lower()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphLower::LowerRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the match method.
        def microsoft_graph_match()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMatch::MatchRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the max method.
        def microsoft_graph_max()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMax::MaxRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the maxA method.
        def microsoft_graph_max_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMaxA::MaxARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the mduration method.
        def microsoft_graph_mduration()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMduration::MdurationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the median method.
        def microsoft_graph_median()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMedian::MedianRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the mid method.
        def microsoft_graph_mid()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMid::MidRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the midb method.
        def microsoft_graph_midb()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMidb::MidbRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the min method.
        def microsoft_graph_min()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMin::MinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the minA method.
        def microsoft_graph_min_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMinA::MinARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the minute method.
        def microsoft_graph_minute()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMinute::MinuteRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the mirr method.
        def microsoft_graph_mirr()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMirr::MirrRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the mod method.
        def microsoft_graph_mod()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMod::ModRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the month method.
        def microsoft_graph_month()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMonth::MonthRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the mround method.
        def microsoft_graph_mround()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMround::MroundRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the multiNomial method.
        def microsoft_graph_multi_nomial()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphMultiNomial::MultiNomialRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the n method.
        def microsoft_graph_n()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphN::NRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the na method.
        def microsoft_graph_na()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNa::NaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the negBinom_Dist method.
        def microsoft_graph_neg_binom_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNegBinom_Dist::NegBinom_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the networkDays method.
        def microsoft_graph_network_days()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNetworkDays::NetworkDaysRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the networkDays_Intl method.
        def microsoft_graph_network_days_intl()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNetworkDays_Intl::NetworkDays_IntlRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the nominal method.
        def microsoft_graph_nominal()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNominal::NominalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the norm_Dist method.
        def microsoft_graph_norm_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_Dist::Norm_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the norm_Inv method.
        def microsoft_graph_norm_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_Inv::Norm_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the norm_S_Dist method.
        def microsoft_graph_norm_s_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_S_Dist::Norm_S_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the norm_S_Inv method.
        def microsoft_graph_norm_s_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNorm_S_Inv::Norm_S_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the not method.
        def microsoft_graph_not()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNot::NotRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the now method.
        def microsoft_graph_now()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNow::NowRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the nper method.
        def microsoft_graph_nper()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNper::NperRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the npv method.
        def microsoft_graph_npv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNpv::NpvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the numberValue method.
        def microsoft_graph_number_value()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphNumberValue::NumberValueRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the oct2Bin method.
        def microsoft_graph_oct2_bin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOct2Bin::Oct2BinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the oct2Dec method.
        def microsoft_graph_oct2_dec()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOct2Dec::Oct2DecRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the oct2Hex method.
        def microsoft_graph_oct2_hex()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOct2Hex::Oct2HexRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the odd method.
        def microsoft_graph_odd()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOdd::OddRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the oddFPrice method.
        def microsoft_graph_odd_f_price()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddFPrice::OddFPriceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the oddFYield method.
        def microsoft_graph_odd_f_yield()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddFYield::OddFYieldRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the oddLPrice method.
        def microsoft_graph_odd_l_price()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddLPrice::OddLPriceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the oddLYield method.
        def microsoft_graph_odd_l_yield()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOddLYield::OddLYieldRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the or method.
        def microsoft_graph_or()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphOr::OrRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the pduration method.
        def microsoft_graph_pduration()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPduration::PdurationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the percentile_Exc method.
        def microsoft_graph_percentile_exc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentile_Exc::Percentile_ExcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the percentile_Inc method.
        def microsoft_graph_percentile_inc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentile_Inc::Percentile_IncRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the percentRank_Exc method.
        def microsoft_graph_percent_rank_exc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentRank_Exc::PercentRank_ExcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the percentRank_Inc method.
        def microsoft_graph_percent_rank_inc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPercentRank_Inc::PercentRank_IncRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the permut method.
        def microsoft_graph_permut()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPermut::PermutRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the permutationa method.
        def microsoft_graph_permutationa()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPermutationa::PermutationaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the phi method.
        def microsoft_graph_phi()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPhi::PhiRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the pi method.
        def microsoft_graph_pi()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPi::PiRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the pmt method.
        def microsoft_graph_pmt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPmt::PmtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the poisson_Dist method.
        def microsoft_graph_poisson_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPoisson_Dist::Poisson_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the power method.
        def microsoft_graph_power()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPower::PowerRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the ppmt method.
        def microsoft_graph_ppmt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPpmt::PpmtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the price method.
        def microsoft_graph_price()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPrice::PriceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the priceDisc method.
        def microsoft_graph_price_disc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPriceDisc::PriceDiscRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the priceMat method.
        def microsoft_graph_price_mat()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPriceMat::PriceMatRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the product method.
        def microsoft_graph_product()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphProduct::ProductRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the proper method.
        def microsoft_graph_proper()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphProper::ProperRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the pv method.
        def microsoft_graph_pv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPv::PvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the quartile_Exc method.
        def microsoft_graph_quartile_exc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphQuartile_Exc::Quartile_ExcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the quartile_Inc method.
        def microsoft_graph_quartile_inc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphQuartile_Inc::Quartile_IncRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the quotient method.
        def microsoft_graph_quotient()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphQuotient::QuotientRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the radians method.
        def microsoft_graph_radians()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRadians::RadiansRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rand method.
        def microsoft_graph_rand()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRand::RandRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the randBetween method.
        def microsoft_graph_rand_between()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRandBetween::RandBetweenRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rank_Avg method.
        def microsoft_graph_rank_avg()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRank_Avg::Rank_AvgRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rank_Eq method.
        def microsoft_graph_rank_eq()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRank_Eq::Rank_EqRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rate method.
        def microsoft_graph_rate()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRate::RateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the received method.
        def microsoft_graph_received()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphReceived::ReceivedRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the replace method.
        def microsoft_graph_replace()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphReplace::ReplaceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the replaceB method.
        def microsoft_graph_replace_b()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphReplaceB::ReplaceBRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rept method.
        def microsoft_graph_rept()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRept::ReptRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the right method.
        def microsoft_graph_right()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRight::RightRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rightb method.
        def microsoft_graph_rightb()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRightb::RightbRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the roman method.
        def microsoft_graph_roman()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRoman::RomanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the round method.
        def microsoft_graph_round()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRound::RoundRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the roundDown method.
        def microsoft_graph_round_down()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRoundDown::RoundDownRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the roundUp method.
        def microsoft_graph_round_up()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRoundUp::RoundUpRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rows method.
        def microsoft_graph_rows()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRows::RowsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rri method.
        def microsoft_graph_rri()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRri::RriRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sec method.
        def microsoft_graph_sec()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSec::SecRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sech method.
        def microsoft_graph_sech()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSech::SechRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the second method.
        def microsoft_graph_second()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSecond::SecondRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the seriesSum method.
        def microsoft_graph_series_sum()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSeriesSum::SeriesSumRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sheet method.
        def microsoft_graph_sheet()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSheet::SheetRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sheets method.
        def microsoft_graph_sheets()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSheets::SheetsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sign method.
        def microsoft_graph_sign()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSign::SignRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sin method.
        def microsoft_graph_sin()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSin::SinRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sinh method.
        def microsoft_graph_sinh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSinh::SinhRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the skew method.
        def microsoft_graph_skew()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSkew::SkewRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the skew_p method.
        def microsoft_graph_skew_p()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSkew_p::Skew_pRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sln method.
        def microsoft_graph_sln()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSln::SlnRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the small method.
        def microsoft_graph_small()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSmall::SmallRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sqrt method.
        def microsoft_graph_sqrt()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSqrt::SqrtRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sqrtPi method.
        def microsoft_graph_sqrt_pi()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSqrtPi::SqrtPiRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the standardize method.
        def microsoft_graph_standardize()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStandardize::StandardizeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the stDev_P method.
        def microsoft_graph_st_dev_p()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDev_P::StDev_PRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the stDev_S method.
        def microsoft_graph_st_dev_s()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDev_S::StDev_SRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the stDevA method.
        def microsoft_graph_st_dev_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDevA::StDevARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the stDevPA method.
        def microsoft_graph_st_dev_p_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphStDevPA::StDevPARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the substitute method.
        def microsoft_graph_substitute()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSubstitute::SubstituteRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the subtotal method.
        def microsoft_graph_subtotal()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSubtotal::SubtotalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sum method.
        def microsoft_graph_sum()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSum::SumRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sumIf method.
        def microsoft_graph_sum_if()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSumIf::SumIfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sumIfs method.
        def microsoft_graph_sum_ifs()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSumIfs::SumIfsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sumSq method.
        def microsoft_graph_sum_sq()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSumSq::SumSqRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the syd method.
        def microsoft_graph_syd()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphSyd::SydRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the t method.
        def microsoft_graph_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT::TRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the t_Dist method.
        def microsoft_graph_t_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Dist::T_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the t_Dist_2T method.
        def microsoft_graph_t_dist_2_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Dist_2T::T_Dist_2TRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the t_Dist_RT method.
        def microsoft_graph_t_dist_r_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Dist_RT::T_Dist_RTRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the t_Inv method.
        def microsoft_graph_t_inv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Inv::T_InvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the t_Inv_2T method.
        def microsoft_graph_t_inv_2_t()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphT_Inv_2T::T_Inv_2TRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the tan method.
        def microsoft_graph_tan()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTan::TanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the tanh method.
        def microsoft_graph_tanh()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTanh::TanhRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the tbillEq method.
        def microsoft_graph_tbill_eq()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTbillEq::TbillEqRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the tbillPrice method.
        def microsoft_graph_tbill_price()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTbillPrice::TbillPriceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the tbillYield method.
        def microsoft_graph_tbill_yield()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTbillYield::TbillYieldRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the text method.
        def microsoft_graph_text()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphText::TextRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the time method.
        def microsoft_graph_time()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTime::TimeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the timevalue method.
        def microsoft_graph_timevalue()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTimevalue::TimevalueRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the today method.
        def microsoft_graph_today()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphToday::TodayRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the trim method.
        def microsoft_graph_trim()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrim::TrimRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the trimMean method.
        def microsoft_graph_trim_mean()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrimMean::TrimMeanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the true method.
        def microsoft_graph_true()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrue::TrueRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the trunc method.
        def microsoft_graph_trunc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphTrunc::TruncRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the type method.
        def microsoft_graph_type()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphType::TypeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the unichar method.
        def microsoft_graph_unichar()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUnichar::UnicharRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the unicode method.
        def microsoft_graph_unicode()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUnicode::UnicodeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the upper method.
        def microsoft_graph_upper()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUpper::UpperRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the usdollar method.
        def microsoft_graph_usdollar()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphUsdollar::UsdollarRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the value method.
        def microsoft_graph_value()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphValue::ValueRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the var_P method.
        def microsoft_graph_var_p()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVar_P::Var_PRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the var_S method.
        def microsoft_graph_var_s()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVar_S::Var_SRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the varA method.
        def microsoft_graph_var_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVarA::VarARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the varPA method.
        def microsoft_graph_var_p_a()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVarPA::VarPARequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the vdb method.
        def microsoft_graph_vdb()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVdb::VdbRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the vlookup method.
        def microsoft_graph_vlookup()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphVlookup::VlookupRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the weekday method.
        def microsoft_graph_weekday()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWeekday::WeekdayRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the weekNum method.
        def microsoft_graph_week_num()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWeekNum::WeekNumRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the weibull_Dist method.
        def microsoft_graph_weibull_dist()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWeibull_Dist::Weibull_DistRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the workDay method.
        def microsoft_graph_work_day()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWorkDay::WorkDayRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the workDay_Intl method.
        def microsoft_graph_work_day_intl()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWorkDay_Intl::WorkDay_IntlRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the xirr method.
        def microsoft_graph_xirr()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphXirr::XirrRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the xnpv method.
        def microsoft_graph_xnpv()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphXnpv::XnpvRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the xor method.
        def microsoft_graph_xor()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphXor::XorRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the year method.
        def microsoft_graph_year()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYear::YearRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the yearFrac method.
        def microsoft_graph_year_frac()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYearFrac::YearFracRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the yield method.
        def microsoft_graph_yield()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYield::YieldRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the yieldDisc method.
        def microsoft_graph_yield_disc()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYieldDisc::YieldDiscRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the yieldMat method.
        def microsoft_graph_yield_mat()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphYieldMat::YieldMatRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the z_Test method.
        def microsoft_graph_z_test()
            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphZ_Test::Z_TestRequestBuilder.new(@path_parameters, @request_adapter)
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
        def delete(request_configuration=)
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
        def get(request_configuration=)
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
        ## @param body 
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of workbook_functions
        ## 
        def patch(body, request_configuration=)
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
        def to_delete_request_information(request_configuration=)
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
        def to_get_request_information(request_configuration=)
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
        ## @param body 
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=)
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
