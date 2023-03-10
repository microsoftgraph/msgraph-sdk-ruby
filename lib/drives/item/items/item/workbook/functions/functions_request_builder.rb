require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/workbook_functions'
require_relative '../../../../../drives'
require_relative '../../../../item'
require_relative '../../../items'
require_relative '../../item'
require_relative '../workbook'
require_relative './abs/abs_request_builder'
require_relative './accr_int/accr_int_request_builder'
require_relative './accr_int_m/accr_int_m_request_builder'
require_relative './acos/acos_request_builder'
require_relative './acosh/acosh_request_builder'
require_relative './acot/acot_request_builder'
require_relative './acoth/acoth_request_builder'
require_relative './amor_degrc/amor_degrc_request_builder'
require_relative './amor_linc/amor_linc_request_builder'
require_relative './and_escaped/and_request_builder'
require_relative './arabic/arabic_request_builder'
require_relative './areas/areas_request_builder'
require_relative './asc/asc_request_builder'
require_relative './asin/asin_request_builder'
require_relative './asinh/asinh_request_builder'
require_relative './atan/atan_request_builder'
require_relative './atan2/atan2_request_builder'
require_relative './atanh/atanh_request_builder'
require_relative './ave_dev/ave_dev_request_builder'
require_relative './average/average_request_builder'
require_relative './average_a/average_a_request_builder'
require_relative './average_if/average_if_request_builder'
require_relative './average_ifs/average_ifs_request_builder'
require_relative './baht_text/baht_text_request_builder'
require_relative './base/base_request_builder'
require_relative './bessel_i/bessel_i_request_builder'
require_relative './bessel_j/bessel_j_request_builder'
require_relative './bessel_k/bessel_k_request_builder'
require_relative './bessel_y/bessel_y_request_builder'
require_relative './beta_dist/beta_dist_request_builder'
require_relative './beta_inv/beta_inv_request_builder'
require_relative './bin2_dec/bin2_dec_request_builder'
require_relative './bin2_hex/bin2_hex_request_builder'
require_relative './bin2_oct/bin2_oct_request_builder'
require_relative './binom_dist/binom_dist_request_builder'
require_relative './binom_dist_range/binom_dist_range_request_builder'
require_relative './binom_inv/binom_inv_request_builder'
require_relative './bitand/bitand_request_builder'
require_relative './bitlshift/bitlshift_request_builder'
require_relative './bitor/bitor_request_builder'
require_relative './bitrshift/bitrshift_request_builder'
require_relative './bitxor/bitxor_request_builder'
require_relative './ceiling_math/ceiling_math_request_builder'
require_relative './ceiling_precise/ceiling_precise_request_builder'
require_relative './char/char_request_builder'
require_relative './chi_sq_dist/chi_sq_dist_request_builder'
require_relative './chi_sq_dist_r_t/chi_sq_dist_r_t_request_builder'
require_relative './chi_sq_inv/chi_sq_inv_request_builder'
require_relative './chi_sq_inv_r_t/chi_sq_inv_r_t_request_builder'
require_relative './choose/choose_request_builder'
require_relative './clean/clean_request_builder'
require_relative './code/code_request_builder'
require_relative './columns/columns_request_builder'
require_relative './combin/combin_request_builder'
require_relative './combina/combina_request_builder'
require_relative './complex/complex_request_builder'
require_relative './concatenate/concatenate_request_builder'
require_relative './confidence_norm/confidence_norm_request_builder'
require_relative './confidence_t/confidence_t_request_builder'
require_relative './convert/convert_request_builder'
require_relative './cos/cos_request_builder'
require_relative './cosh/cosh_request_builder'
require_relative './cot/cot_request_builder'
require_relative './coth/coth_request_builder'
require_relative './count/count_request_builder'
require_relative './count_a/count_a_request_builder'
require_relative './count_blank/count_blank_request_builder'
require_relative './count_if/count_if_request_builder'
require_relative './count_ifs/count_ifs_request_builder'
require_relative './coup_day_bs/coup_day_bs_request_builder'
require_relative './coup_days/coup_days_request_builder'
require_relative './coup_days_nc/coup_days_nc_request_builder'
require_relative './coup_ncd/coup_ncd_request_builder'
require_relative './coup_num/coup_num_request_builder'
require_relative './coup_pcd/coup_pcd_request_builder'
require_relative './csc/csc_request_builder'
require_relative './csch/csch_request_builder'
require_relative './cum_i_pmt/cum_i_pmt_request_builder'
require_relative './cum_princ/cum_princ_request_builder'
require_relative './date/date_request_builder'
require_relative './datevalue/datevalue_request_builder'
require_relative './daverage/daverage_request_builder'
require_relative './day/day_request_builder'
require_relative './days/days_request_builder'
require_relative './days360/days360_request_builder'
require_relative './db/db_request_builder'
require_relative './dbcs/dbcs_request_builder'
require_relative './dcount/dcount_request_builder'
require_relative './dcount_a/dcount_a_request_builder'
require_relative './ddb/ddb_request_builder'
require_relative './dec2_bin/dec2_bin_request_builder'
require_relative './dec2_hex/dec2_hex_request_builder'
require_relative './dec2_oct/dec2_oct_request_builder'
require_relative './decimal/decimal_request_builder'
require_relative './degrees/degrees_request_builder'
require_relative './delta/delta_request_builder'
require_relative './dev_sq/dev_sq_request_builder'
require_relative './dget/dget_request_builder'
require_relative './disc/disc_request_builder'
require_relative './dmax/dmax_request_builder'
require_relative './dmin/dmin_request_builder'
require_relative './dollar/dollar_request_builder'
require_relative './dollar_de/dollar_de_request_builder'
require_relative './dollar_fr/dollar_fr_request_builder'
require_relative './dproduct/dproduct_request_builder'
require_relative './dst_dev/dst_dev_request_builder'
require_relative './dst_dev_p/dst_dev_p_request_builder'
require_relative './dsum/dsum_request_builder'
require_relative './duration/duration_request_builder'
require_relative './dvar/dvar_request_builder'
require_relative './dvar_p/dvar_p_request_builder'
require_relative './ecma_ceiling/ecma_ceiling_request_builder'
require_relative './edate/edate_request_builder'
require_relative './effect/effect_request_builder'
require_relative './eo_month/eo_month_request_builder'
require_relative './erf/erf_request_builder'
require_relative './erf_c/erf_c_request_builder'
require_relative './erf_c_precise/erf_c_precise_request_builder'
require_relative './erf_precise/erf_precise_request_builder'
require_relative './error_type/error_type_request_builder'
require_relative './even/even_request_builder'
require_relative './exact/exact_request_builder'
require_relative './exp/exp_request_builder'
require_relative './expon_dist/expon_dist_request_builder'
require_relative './fact/fact_request_builder'
require_relative './fact_double/fact_double_request_builder'
require_relative './false_escaped/false_request_builder'
require_relative './find/find_request_builder'
require_relative './find_b/find_b_request_builder'
require_relative './fisher/fisher_request_builder'
require_relative './fisher_inv/fisher_inv_request_builder'
require_relative './fixed/fixed_request_builder'
require_relative './floor_math/floor_math_request_builder'
require_relative './floor_precise/floor_precise_request_builder'
require_relative './functions'
require_relative './fv/fv_request_builder'
require_relative './fvschedule/fvschedule_request_builder'
require_relative './f_dist/f_dist_request_builder'
require_relative './f_dist_r_t/f_dist_r_t_request_builder'
require_relative './f_inv/f_inv_request_builder'
require_relative './f_inv_r_t/f_inv_r_t_request_builder'
require_relative './gamma/gamma_request_builder'
require_relative './gamma_ln/gamma_ln_request_builder'
require_relative './gamma_ln_precise/gamma_ln_precise_request_builder'
require_relative './gamma_dist/gamma_dist_request_builder'
require_relative './gamma_inv/gamma_inv_request_builder'
require_relative './gauss/gauss_request_builder'
require_relative './gcd/gcd_request_builder'
require_relative './geo_mean/geo_mean_request_builder'
require_relative './ge_step/ge_step_request_builder'
require_relative './har_mean/har_mean_request_builder'
require_relative './hex2_bin/hex2_bin_request_builder'
require_relative './hex2_dec/hex2_dec_request_builder'
require_relative './hex2_oct/hex2_oct_request_builder'
require_relative './hlookup/hlookup_request_builder'
require_relative './hour/hour_request_builder'
require_relative './hyperlink/hyperlink_request_builder'
require_relative './hyp_geom_dist/hyp_geom_dist_request_builder'
require_relative './if_escaped/if_request_builder'
require_relative './im_abs/im_abs_request_builder'
require_relative './imaginary/imaginary_request_builder'
require_relative './im_argument/im_argument_request_builder'
require_relative './im_conjugate/im_conjugate_request_builder'
require_relative './im_cos/im_cos_request_builder'
require_relative './im_cosh/im_cosh_request_builder'
require_relative './im_cot/im_cot_request_builder'
require_relative './im_csc/im_csc_request_builder'
require_relative './im_csch/im_csch_request_builder'
require_relative './im_div/im_div_request_builder'
require_relative './im_exp/im_exp_request_builder'
require_relative './im_ln/im_ln_request_builder'
require_relative './im_log10/im_log10_request_builder'
require_relative './im_log2/im_log2_request_builder'
require_relative './im_power/im_power_request_builder'
require_relative './im_product/im_product_request_builder'
require_relative './im_real/im_real_request_builder'
require_relative './im_sec/im_sec_request_builder'
require_relative './im_sech/im_sech_request_builder'
require_relative './im_sin/im_sin_request_builder'
require_relative './im_sinh/im_sinh_request_builder'
require_relative './im_sqrt/im_sqrt_request_builder'
require_relative './im_sub/im_sub_request_builder'
require_relative './im_sum/im_sum_request_builder'
require_relative './im_tan/im_tan_request_builder'
require_relative './int/int_request_builder'
require_relative './int_rate/int_rate_request_builder'
require_relative './ipmt/ipmt_request_builder'
require_relative './irr/irr_request_builder'
require_relative './is_err/is_err_request_builder'
require_relative './is_error/is_error_request_builder'
require_relative './is_even/is_even_request_builder'
require_relative './is_formula/is_formula_request_builder'
require_relative './is_logical/is_logical_request_builder'
require_relative './is_n_a/is_n_a_request_builder'
require_relative './is_non_text/is_non_text_request_builder'
require_relative './is_number/is_number_request_builder'
require_relative './is_odd/is_odd_request_builder'
require_relative './iso_week_num/iso_week_num_request_builder'
require_relative './iso_ceiling/iso_ceiling_request_builder'
require_relative './ispmt/ispmt_request_builder'
require_relative './isref/isref_request_builder'
require_relative './is_text/is_text_request_builder'
require_relative './kurt/kurt_request_builder'
require_relative './large/large_request_builder'
require_relative './lcm/lcm_request_builder'
require_relative './left/left_request_builder'
require_relative './leftb/leftb_request_builder'
require_relative './len/len_request_builder'
require_relative './lenb/lenb_request_builder'
require_relative './ln/ln_request_builder'
require_relative './log/log_request_builder'
require_relative './log10/log10_request_builder'
require_relative './log_norm_dist/log_norm_dist_request_builder'
require_relative './log_norm_inv/log_norm_inv_request_builder'
require_relative './lookup/lookup_request_builder'
require_relative './lower/lower_request_builder'
require_relative './match/match_request_builder'
require_relative './max/max_request_builder'
require_relative './max_a/max_a_request_builder'
require_relative './mduration/mduration_request_builder'
require_relative './median/median_request_builder'
require_relative './mid/mid_request_builder'
require_relative './midb/midb_request_builder'
require_relative './min/min_request_builder'
require_relative './min_a/min_a_request_builder'
require_relative './minute/minute_request_builder'
require_relative './mirr/mirr_request_builder'
require_relative './mod/mod_request_builder'
require_relative './month/month_request_builder'
require_relative './mround/mround_request_builder'
require_relative './multi_nomial/multi_nomial_request_builder'
require_relative './n/n_request_builder'
require_relative './na/na_request_builder'
require_relative './neg_binom_dist/neg_binom_dist_request_builder'
require_relative './network_days/network_days_request_builder'
require_relative './network_days_intl/network_days_intl_request_builder'
require_relative './nominal/nominal_request_builder'
require_relative './norm_dist/norm_dist_request_builder'
require_relative './norm_inv/norm_inv_request_builder'
require_relative './norm_s_dist/norm_s_dist_request_builder'
require_relative './norm_s_inv/norm_s_inv_request_builder'
require_relative './not_escaped/not_request_builder'
require_relative './now/now_request_builder'
require_relative './nper/nper_request_builder'
require_relative './npv/npv_request_builder'
require_relative './number_value/number_value_request_builder'
require_relative './oct2_bin/oct2_bin_request_builder'
require_relative './oct2_dec/oct2_dec_request_builder'
require_relative './oct2_hex/oct2_hex_request_builder'
require_relative './odd/odd_request_builder'
require_relative './odd_f_price/odd_f_price_request_builder'
require_relative './odd_f_yield/odd_f_yield_request_builder'
require_relative './odd_l_price/odd_l_price_request_builder'
require_relative './odd_l_yield/odd_l_yield_request_builder'
require_relative './or_escaped/or_request_builder'
require_relative './pduration/pduration_request_builder'
require_relative './percentile_exc/percentile_exc_request_builder'
require_relative './percentile_inc/percentile_inc_request_builder'
require_relative './percent_rank_exc/percent_rank_exc_request_builder'
require_relative './percent_rank_inc/percent_rank_inc_request_builder'
require_relative './permut/permut_request_builder'
require_relative './permutationa/permutationa_request_builder'
require_relative './phi/phi_request_builder'
require_relative './pi/pi_request_builder'
require_relative './pmt/pmt_request_builder'
require_relative './poisson_dist/poisson_dist_request_builder'
require_relative './power/power_request_builder'
require_relative './ppmt/ppmt_request_builder'
require_relative './price/price_request_builder'
require_relative './price_disc/price_disc_request_builder'
require_relative './price_mat/price_mat_request_builder'
require_relative './product/product_request_builder'
require_relative './proper/proper_request_builder'
require_relative './pv/pv_request_builder'
require_relative './quartile_exc/quartile_exc_request_builder'
require_relative './quartile_inc/quartile_inc_request_builder'
require_relative './quotient/quotient_request_builder'
require_relative './radians/radians_request_builder'
require_relative './rand/rand_request_builder'
require_relative './rand_between/rand_between_request_builder'
require_relative './rank_avg/rank_avg_request_builder'
require_relative './rank_eq/rank_eq_request_builder'
require_relative './rate/rate_request_builder'
require_relative './received/received_request_builder'
require_relative './replace/replace_request_builder'
require_relative './replace_b/replace_b_request_builder'
require_relative './rept/rept_request_builder'
require_relative './right/right_request_builder'
require_relative './rightb/rightb_request_builder'
require_relative './roman/roman_request_builder'
require_relative './round/round_request_builder'
require_relative './round_down/round_down_request_builder'
require_relative './round_up/round_up_request_builder'
require_relative './rows/rows_request_builder'
require_relative './rri/rri_request_builder'
require_relative './sec/sec_request_builder'
require_relative './sech/sech_request_builder'
require_relative './second/second_request_builder'
require_relative './series_sum/series_sum_request_builder'
require_relative './sheet/sheet_request_builder'
require_relative './sheets/sheets_request_builder'
require_relative './sign/sign_request_builder'
require_relative './sin/sin_request_builder'
require_relative './sinh/sinh_request_builder'
require_relative './skew/skew_request_builder'
require_relative './skew_p/skew_p_request_builder'
require_relative './sln/sln_request_builder'
require_relative './small/small_request_builder'
require_relative './sqrt/sqrt_request_builder'
require_relative './sqrt_pi/sqrt_pi_request_builder'
require_relative './standardize/standardize_request_builder'
require_relative './st_dev_a/st_dev_a_request_builder'
require_relative './st_dev_p_a/st_dev_p_a_request_builder'
require_relative './st_dev_p/st_dev_p_request_builder'
require_relative './st_dev_s/st_dev_s_request_builder'
require_relative './substitute/substitute_request_builder'
require_relative './subtotal/subtotal_request_builder'
require_relative './sum/sum_request_builder'
require_relative './sum_if/sum_if_request_builder'
require_relative './sum_ifs/sum_ifs_request_builder'
require_relative './sum_sq/sum_sq_request_builder'
require_relative './syd/syd_request_builder'
require_relative './t/t_request_builder'
require_relative './tan/tan_request_builder'
require_relative './tanh/tanh_request_builder'
require_relative './tbill_eq/tbill_eq_request_builder'
require_relative './tbill_price/tbill_price_request_builder'
require_relative './tbill_yield/tbill_yield_request_builder'
require_relative './text/text_request_builder'
require_relative './time/time_request_builder'
require_relative './timevalue/timevalue_request_builder'
require_relative './today/today_request_builder'
require_relative './trim/trim_request_builder'
require_relative './trim_mean/trim_mean_request_builder'
require_relative './true_escaped/true_request_builder'
require_relative './trunc/trunc_request_builder'
require_relative './type/type_request_builder'
require_relative './t_dist/t_dist_request_builder'
require_relative './t_dist_2_t/t_dist2_t_request_builder'
require_relative './t_dist_r_t/t_dist_r_t_request_builder'
require_relative './t_inv/t_inv_request_builder'
require_relative './t_inv_2_t/t_inv2_t_request_builder'
require_relative './unichar/unichar_request_builder'
require_relative './unicode/unicode_request_builder'
require_relative './upper/upper_request_builder'
require_relative './usdollar/usdollar_request_builder'
require_relative './value/value_request_builder'
require_relative './var_a/var_a_request_builder'
require_relative './var_p_a/var_p_a_request_builder'
require_relative './var_p/var_p_request_builder'
require_relative './var_s/var_s_request_builder'
require_relative './vdb/vdb_request_builder'
require_relative './vlookup/vlookup_request_builder'
require_relative './weekday/weekday_request_builder'
require_relative './week_num/week_num_request_builder'
require_relative './weibull_dist/weibull_dist_request_builder'
require_relative './work_day/work_day_request_builder'
require_relative './work_day_intl/work_day_intl_request_builder'
require_relative './xirr/xirr_request_builder'
require_relative './xnpv/xnpv_request_builder'
require_relative './xor/xor_request_builder'
require_relative './year/year_request_builder'
require_relative './year_frac/year_frac_request_builder'
require_relative './yield/yield_request_builder'
require_relative './yield_disc/yield_disc_request_builder'
require_relative './yield_mat/yield_mat_request_builder'
require_relative './z_test/z_test_request_builder'

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
                                def abs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Abs::AbsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the accrInt method.
                                def accr_int()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AccrInt::AccrIntRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the accrIntM method.
                                def accr_int_m()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AccrIntM::AccrIntMRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acos method.
                                def acos()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Acos::AcosRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acosh method.
                                def acosh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Acosh::AcoshRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acot method.
                                def acot()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Acot::AcotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the acoth method.
                                def acoth()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Acoth::AcothRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the amorDegrc method.
                                def amor_degrc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AmorDegrc::AmorDegrcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the amorLinc method.
                                def amor_linc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AmorLinc::AmorLincRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the and method.
                                def and_escaped()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::And_escaped::AndRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the arabic method.
                                def arabic()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Arabic::ArabicRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the areas method.
                                def areas()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Areas::AreasRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the asc method.
                                def asc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Asc::AscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the asin method.
                                def asin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Asin::AsinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the asinh method.
                                def asinh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Asinh::AsinhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the atan method.
                                def atan()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Atan::AtanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the atan2 method.
                                def atan2()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Atan2::Atan2RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the atanh method.
                                def atanh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Atanh::AtanhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the aveDev method.
                                def ave_dev()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AveDev::AveDevRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the average method.
                                def average()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Average::AverageRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the averageA method.
                                def average_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AverageA::AverageARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the averageIf method.
                                def average_if()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AverageIf::AverageIfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the averageIfs method.
                                def average_ifs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::AverageIfs::AverageIfsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bahtText method.
                                def baht_text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::BahtText::BahtTextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the base method.
                                def base()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Base::BaseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselI method.
                                def bessel_i()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::BesselI::BesselIRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselJ method.
                                def bessel_j()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::BesselJ::BesselJRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselK method.
                                def bessel_k()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::BesselK::BesselKRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the besselY method.
                                def bessel_y()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::BesselY::BesselYRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the beta_Dist method.
                                def beta_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Beta_Dist::BetaDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the beta_Inv method.
                                def beta_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Beta_Inv::BetaInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bin2Dec method.
                                def bin2_dec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bin2Dec::Bin2DecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bin2Hex method.
                                def bin2_hex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bin2Hex::Bin2HexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bin2Oct method.
                                def bin2_oct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bin2Oct::Bin2OctRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the binom_Dist method.
                                def binom_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Binom_Dist::BinomDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the binom_Dist_Range method.
                                def binom_dist_range()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Binom_Dist_Range::BinomDistRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the binom_Inv method.
                                def binom_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Binom_Inv::BinomInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitand method.
                                def bitand()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bitand::BitandRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitlshift method.
                                def bitlshift()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bitlshift::BitlshiftRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitor method.
                                def bitor()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bitor::BitorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitrshift method.
                                def bitrshift()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bitrshift::BitrshiftRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the bitxor method.
                                def bitxor()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Bitxor::BitxorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ceiling_Math method.
                                def ceiling_math()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ceiling_Math::CeilingMathRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ceiling_Precise method.
                                def ceiling_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ceiling_Precise::CeilingPreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the char method.
                                def char()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Char::CharRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Dist method.
                                def chi_sq_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ChiSq_Dist::ChiSqDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Dist_RT method.
                                def chi_sq_dist_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ChiSq_Dist_RT::ChiSqDistRTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Inv method.
                                def chi_sq_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ChiSq_Inv::ChiSqInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the chiSq_Inv_RT method.
                                def chi_sq_inv_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ChiSq_Inv_RT::ChiSqInvRTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the choose method.
                                def choose()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Choose::ChooseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the clean method.
                                def clean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Clean::CleanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the code method.
                                def code()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Code::CodeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the columns method.
                                def columns()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the combin method.
                                def combin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Combin::CombinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the combina method.
                                def combina()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Combina::CombinaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the complex method.
                                def complex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Complex::ComplexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the concatenate method.
                                def concatenate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Concatenate::ConcatenateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the confidence_Norm method.
                                def confidence_norm()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Confidence_Norm::ConfidenceNormRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the confidence_T method.
                                def confidence_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Confidence_T::ConfidenceTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the convert method.
                                def convert()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Convert::ConvertRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cos method.
                                def cos()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Cos::CosRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cosh method.
                                def cosh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Cosh::CoshRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cot method.
                                def cot()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Cot::CotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coth method.
                                def coth()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Coth::CothRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the count method.
                                def count()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countA method.
                                def count_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CountA::CountARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countBlank method.
                                def count_blank()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CountBlank::CountBlankRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countIf method.
                                def count_if()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CountIf::CountIfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the countIfs method.
                                def count_ifs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CountIfs::CountIfsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupDayBs method.
                                def coup_day_bs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CoupDayBs::CoupDayBsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupDays method.
                                def coup_days()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CoupDays::CoupDaysRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupDaysNc method.
                                def coup_days_nc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CoupDaysNc::CoupDaysNcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupNcd method.
                                def coup_ncd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CoupNcd::CoupNcdRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupNum method.
                                def coup_num()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CoupNum::CoupNumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the coupPcd method.
                                def coup_pcd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CoupPcd::CoupPcdRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the csc method.
                                def csc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Csc::CscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the csch method.
                                def csch()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Csch::CschRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cumIPmt method.
                                def cum_i_pmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CumIPmt::CumIPmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the cumPrinc method.
                                def cum_princ()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::CumPrinc::CumPrincRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the date method.
                                def date()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Date::DateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the datevalue method.
                                def datevalue()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Datevalue::DatevalueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the daverage method.
                                def daverage()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Daverage::DaverageRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the day method.
                                def day()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Day::DayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the days method.
                                def days()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Days::DaysRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the days360 method.
                                def days360()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Days360::Days360RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the db method.
                                def db()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Db::DbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dbcs method.
                                def dbcs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dbcs::DbcsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dcount method.
                                def dcount()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dcount::DcountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dcountA method.
                                def dcount_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::DcountA::DcountARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ddb method.
                                def ddb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ddb::DdbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dec2Bin method.
                                def dec2_bin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dec2Bin::Dec2BinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dec2Hex method.
                                def dec2_hex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dec2Hex::Dec2HexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dec2Oct method.
                                def dec2_oct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dec2Oct::Dec2OctRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the decimal method.
                                def decimal()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Decimal::DecimalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the degrees method.
                                def degrees()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Degrees::DegreesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the delta method.
                                def delta()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the devSq method.
                                def dev_sq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::DevSq::DevSqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dget method.
                                def dget()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dget::DgetRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the disc method.
                                def disc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Disc::DiscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dmax method.
                                def dmax()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dmax::DmaxRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dmin method.
                                def dmin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dmin::DminRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dollar method.
                                def dollar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dollar::DollarRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dollarDe method.
                                def dollar_de()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::DollarDe::DollarDeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dollarFr method.
                                def dollar_fr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::DollarFr::DollarFrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dproduct method.
                                def dproduct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dproduct::DproductRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dstDev method.
                                def dst_dev()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::DstDev::DstDevRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dstDevP method.
                                def dst_dev_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::DstDevP::DstDevPRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dsum method.
                                def dsum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dsum::DsumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the duration method.
                                def duration()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Duration::DurationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dvar method.
                                def dvar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Dvar::DvarRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the dvarP method.
                                def dvar_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::DvarP::DvarPRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ecma_Ceiling method.
                                def ecma_ceiling()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ecma_Ceiling::EcmaCeilingRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the edate method.
                                def edate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Edate::EdateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the effect method.
                                def effect()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Effect::EffectRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the eoMonth method.
                                def eo_month()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::EoMonth::EoMonthRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erf method.
                                def erf()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Erf::ErfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erf_Precise method.
                                def erf_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Erf_Precise::ErfPreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erfC method.
                                def erf_c()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ErfC::ErfCRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the erfC_Precise method.
                                def erf_c_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ErfC_Precise::ErfCPreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the error_Type method.
                                def error_type()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Error_Type::ErrorTypeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the even method.
                                def even()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Even::EvenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the exact method.
                                def exact()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Exact::ExactRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the exp method.
                                def exp()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Exp::ExpRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the expon_Dist method.
                                def expon_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Expon_Dist::ExponDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Dist method.
                                def f_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::F_Dist::FDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Dist_RT method.
                                def f_dist_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::F_Dist_RT::FDistRTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Inv method.
                                def f_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::F_Inv::FInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the f_Inv_RT method.
                                def f_inv_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::F_Inv_RT::FInvRTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fact method.
                                def fact()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Fact::FactRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the factDouble method.
                                def fact_double()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::FactDouble::FactDoubleRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the false method.
                                def false_escaped()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::False_escaped::FalseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the find method.
                                def find()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Find::FindRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the findB method.
                                def find_b()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::FindB::FindBRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fisher method.
                                def fisher()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Fisher::FisherRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fisherInv method.
                                def fisher_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::FisherInv::FisherInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fixed method.
                                def fixed()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Fixed::FixedRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the floor_Math method.
                                def floor_math()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Floor_Math::FloorMathRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the floor_Precise method.
                                def floor_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Floor_Precise::FloorPreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fv method.
                                def fv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Fv::FvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the fvschedule method.
                                def fvschedule()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Fvschedule::FvscheduleRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gamma method.
                                def gamma()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Gamma::GammaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gamma_Dist method.
                                def gamma_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Gamma_Dist::GammaDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gamma_Inv method.
                                def gamma_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Gamma_Inv::GammaInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gammaLn method.
                                def gamma_ln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::GammaLn::GammaLnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gammaLn_Precise method.
                                def gamma_ln_precise()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::GammaLn_Precise::GammaLnPreciseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gauss method.
                                def gauss()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Gauss::GaussRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the gcd method.
                                def gcd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Gcd::GcdRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the geoMean method.
                                def geo_mean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::GeoMean::GeoMeanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the geStep method.
                                def ge_step()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::GeStep::GeStepRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the harMean method.
                                def har_mean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::HarMean::HarMeanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hex2Bin method.
                                def hex2_bin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Hex2Bin::Hex2BinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hex2Dec method.
                                def hex2_dec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Hex2Dec::Hex2DecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hex2Oct method.
                                def hex2_oct()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Hex2Oct::Hex2OctRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hlookup method.
                                def hlookup()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Hlookup::HlookupRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hour method.
                                def hour()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Hour::HourRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hyperlink method.
                                def hyperlink()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Hyperlink::HyperlinkRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the hypGeom_Dist method.
                                def hyp_geom_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::HypGeom_Dist::HypGeomDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the if method.
                                def if_escaped()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::If_escaped::IfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imAbs method.
                                def im_abs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImAbs::ImAbsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imaginary method.
                                def imaginary()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Imaginary::ImaginaryRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imArgument method.
                                def im_argument()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImArgument::ImArgumentRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imConjugate method.
                                def im_conjugate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImConjugate::ImConjugateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCos method.
                                def im_cos()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImCos::ImCosRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCosh method.
                                def im_cosh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImCosh::ImCoshRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCot method.
                                def im_cot()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImCot::ImCotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCsc method.
                                def im_csc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImCsc::ImCscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imCsch method.
                                def im_csch()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImCsch::ImCschRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imDiv method.
                                def im_div()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImDiv::ImDivRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imExp method.
                                def im_exp()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImExp::ImExpRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imLn method.
                                def im_ln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImLn::ImLnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imLog10 method.
                                def im_log10()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImLog10::ImLog10RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imLog2 method.
                                def im_log2()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImLog2::ImLog2RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imPower method.
                                def im_power()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImPower::ImPowerRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imProduct method.
                                def im_product()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImProduct::ImProductRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imReal method.
                                def im_real()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImReal::ImRealRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSec method.
                                def im_sec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImSec::ImSecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSech method.
                                def im_sech()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImSech::ImSechRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSin method.
                                def im_sin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImSin::ImSinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSinh method.
                                def im_sinh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImSinh::ImSinhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSqrt method.
                                def im_sqrt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImSqrt::ImSqrtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSub method.
                                def im_sub()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImSub::ImSubRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imSum method.
                                def im_sum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImSum::ImSumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the imTan method.
                                def im_tan()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ImTan::ImTanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the int method.
                                def int()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Int::IntRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the intRate method.
                                def int_rate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IntRate::IntRateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ipmt method.
                                def ipmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ipmt::IpmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the irr method.
                                def irr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Irr::IrrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isErr method.
                                def is_err()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsErr::IsErrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isError method.
                                def is_error()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsError::IsErrorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isEven method.
                                def is_even()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsEven::IsEvenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isFormula method.
                                def is_formula()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsFormula::IsFormulaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isLogical method.
                                def is_logical()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsLogical::IsLogicalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isNA method.
                                def is_n_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsNA::IsNARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isNonText method.
                                def is_non_text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsNonText::IsNonTextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isNumber method.
                                def is_number()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsNumber::IsNumberRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the iso_Ceiling method.
                                def iso_ceiling()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Iso_Ceiling::IsoCeilingRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isOdd method.
                                def is_odd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsOdd::IsOddRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isoWeekNum method.
                                def iso_week_num()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsoWeekNum::IsoWeekNumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ispmt method.
                                def ispmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ispmt::IspmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isref method.
                                def isref()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Isref::IsrefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isText method.
                                def is_text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::IsText::IsTextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the kurt method.
                                def kurt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Kurt::KurtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the large method.
                                def large()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Large::LargeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lcm method.
                                def lcm()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Lcm::LcmRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the left method.
                                def left()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Left::LeftRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the leftb method.
                                def leftb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Leftb::LeftbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the len method.
                                def len()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Len::LenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lenb method.
                                def lenb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Lenb::LenbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ln method.
                                def ln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ln::LnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the log method.
                                def log()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Log::LogRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the log10 method.
                                def log10()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Log10::Log10RequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the logNorm_Dist method.
                                def log_norm_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::LogNorm_Dist::LogNormDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the logNorm_Inv method.
                                def log_norm_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::LogNorm_Inv::LogNormInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lookup method.
                                def lookup()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Lookup::LookupRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the lower method.
                                def lower()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Lower::LowerRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the match method.
                                def match()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Match::MatchRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the max method.
                                def max()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Max::MaxRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the maxA method.
                                def max_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MaxA::MaxARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mduration method.
                                def mduration()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Mduration::MdurationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the median method.
                                def median()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Median::MedianRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mid method.
                                def mid()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Mid::MidRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the midb method.
                                def midb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Midb::MidbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the min method.
                                def min()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Min::MinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the minA method.
                                def min_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MinA::MinARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the minute method.
                                def minute()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Minute::MinuteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mirr method.
                                def mirr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Mirr::MirrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mod method.
                                def mod()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Mod::ModRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the month method.
                                def month()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Month::MonthRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the mround method.
                                def mround()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Mround::MroundRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the multiNomial method.
                                def multi_nomial()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MultiNomial::MultiNomialRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the n method.
                                def n()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::N::NRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the na method.
                                def na()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Na::NaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the negBinom_Dist method.
                                def neg_binom_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::NegBinom_Dist::NegBinomDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the networkDays method.
                                def network_days()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::NetworkDays::NetworkDaysRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the networkDays_Intl method.
                                def network_days_intl()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::NetworkDays_Intl::NetworkDaysIntlRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the nominal method.
                                def nominal()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Nominal::NominalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_Dist method.
                                def norm_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Norm_Dist::NormDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_Inv method.
                                def norm_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Norm_Inv::NormInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_S_Dist method.
                                def norm_s_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Norm_S_Dist::NormSDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the norm_S_Inv method.
                                def norm_s_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Norm_S_Inv::NormSInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the not method.
                                def not_escaped()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Not_escaped::NotRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the now method.
                                def now()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Now::NowRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the nper method.
                                def nper()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Nper::NperRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the npv method.
                                def npv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Npv::NpvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the numberValue method.
                                def number_value()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::NumberValue::NumberValueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oct2Bin method.
                                def oct2_bin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Oct2Bin::Oct2BinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oct2Dec method.
                                def oct2_dec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Oct2Dec::Oct2DecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oct2Hex method.
                                def oct2_hex()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Oct2Hex::Oct2HexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the odd method.
                                def odd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Odd::OddRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddFPrice method.
                                def odd_f_price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::OddFPrice::OddFPriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddFYield method.
                                def odd_f_yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::OddFYield::OddFYieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddLPrice method.
                                def odd_l_price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::OddLPrice::OddLPriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the oddLYield method.
                                def odd_l_yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::OddLYield::OddLYieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the or method.
                                def or_escaped()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Or_escaped::OrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # Provides operations to call the pduration method.
                                def pduration()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Pduration::PdurationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentile_Exc method.
                                def percentile_exc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Percentile_Exc::PercentileExcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentile_Inc method.
                                def percentile_inc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Percentile_Inc::PercentileIncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentRank_Exc method.
                                def percent_rank_exc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::PercentRank_Exc::PercentRankExcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the percentRank_Inc method.
                                def percent_rank_inc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::PercentRank_Inc::PercentRankIncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the permut method.
                                def permut()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Permut::PermutRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the permutationa method.
                                def permutationa()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Permutationa::PermutationaRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the phi method.
                                def phi()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Phi::PhiRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the pi method.
                                def pi()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Pi::PiRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the pmt method.
                                def pmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Pmt::PmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the poisson_Dist method.
                                def poisson_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Poisson_Dist::PoissonDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the power method.
                                def power()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Power::PowerRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the ppmt method.
                                def ppmt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Ppmt::PpmtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the price method.
                                def price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Price::PriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the priceDisc method.
                                def price_disc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::PriceDisc::PriceDiscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the priceMat method.
                                def price_mat()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::PriceMat::PriceMatRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the product method.
                                def product()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Product::ProductRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the proper method.
                                def proper()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Proper::ProperRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the pv method.
                                def pv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Pv::PvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the quartile_Exc method.
                                def quartile_exc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Quartile_Exc::QuartileExcRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the quartile_Inc method.
                                def quartile_inc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Quartile_Inc::QuartileIncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the quotient method.
                                def quotient()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Quotient::QuotientRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the radians method.
                                def radians()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Radians::RadiansRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rand method.
                                def rand()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rand::RandRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the randBetween method.
                                def rand_between()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::RandBetween::RandBetweenRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rank_Avg method.
                                def rank_avg()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rank_Avg::RankAvgRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rank_Eq method.
                                def rank_eq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rank_Eq::RankEqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rate method.
                                def rate()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rate::RateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the received method.
                                def received()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Received::ReceivedRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the replace method.
                                def replace()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Replace::ReplaceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the replaceB method.
                                def replace_b()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::ReplaceB::ReplaceBRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rept method.
                                def rept()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rept::ReptRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Provides operations to call the right method.
                                def right()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Right::RightRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rightb method.
                                def rightb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rightb::RightbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the roman method.
                                def roman()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Roman::RomanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the round method.
                                def round()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Round::RoundRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the roundDown method.
                                def round_down()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::RoundDown::RoundDownRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the roundUp method.
                                def round_up()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::RoundUp::RoundUpRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rows method.
                                def rows()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rows::RowsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the rri method.
                                def rri()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Rri::RriRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sec method.
                                def sec()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sec::SecRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sech method.
                                def sech()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sech::SechRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the second method.
                                def second()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Second::SecondRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the seriesSum method.
                                def series_sum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::SeriesSum::SeriesSumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sheet method.
                                def sheet()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sheet::SheetRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sheets method.
                                def sheets()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sheets::SheetsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sign method.
                                def sign()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sign::SignRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sin method.
                                def sin()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sin::SinRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sinh method.
                                def sinh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sinh::SinhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the skew method.
                                def skew()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Skew::SkewRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the skew_p method.
                                def skew_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Skew_p::SkewPRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sln method.
                                def sln()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sln::SlnRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the small method.
                                def small()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Small::SmallRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sqrt method.
                                def sqrt()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sqrt::SqrtRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sqrtPi method.
                                def sqrt_pi()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::SqrtPi::SqrtPiRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the standardize method.
                                def standardize()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Standardize::StandardizeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDev_P method.
                                def st_dev_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::StDev_P::StDevPRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDev_S method.
                                def st_dev_s()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::StDev_S::StDevSRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDevA method.
                                def st_dev_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::StDevA::StDevARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stDevPA method.
                                def st_dev_p_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::StDevPA::StDevPARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the substitute method.
                                def substitute()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Substitute::SubstituteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the subtotal method.
                                def subtotal()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Subtotal::SubtotalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sum method.
                                def sum()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Sum::SumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sumIf method.
                                def sum_if()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::SumIf::SumIfRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sumIfs method.
                                def sum_ifs()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::SumIfs::SumIfsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sumSq method.
                                def sum_sq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::SumSq::SumSqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the syd method.
                                def syd()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Syd::SydRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t method.
                                def t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::T::TRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Dist method.
                                def t_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::T_Dist::TDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Dist_2T method.
                                def t_dist_2_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::T_Dist_2T::TDist2TRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Dist_RT method.
                                def t_dist_r_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::T_Dist_RT::TDistRTRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Inv method.
                                def t_inv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::T_Inv::TInvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the t_Inv_2T method.
                                def t_inv_2_t()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::T_Inv_2T::TInv2TRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tan method.
                                def tan()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Tan::TanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tanh method.
                                def tanh()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Tanh::TanhRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tbillEq method.
                                def tbill_eq()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::TbillEq::TbillEqRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tbillPrice method.
                                def tbill_price()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::TbillPrice::TbillPriceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the tbillYield method.
                                def tbill_yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::TbillYield::TbillYieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the text method.
                                def text()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Text::TextRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the time method.
                                def time()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Time::TimeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the timevalue method.
                                def timevalue()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Timevalue::TimevalueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the today method.
                                def today()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Today::TodayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the trim method.
                                def trim()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Trim::TrimRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the trimMean method.
                                def trim_mean()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::TrimMean::TrimMeanRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the true method.
                                def true_escaped()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::True_escaped::TrueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the trunc method.
                                def trunc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Trunc::TruncRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the type method.
                                def type()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Type::TypeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the unichar method.
                                def unichar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Unichar::UnicharRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the unicode method.
                                def unicode()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Unicode::UnicodeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the upper method.
                                def upper()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Upper::UpperRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                # Provides operations to call the usdollar method.
                                def usdollar()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Usdollar::UsdollarRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the value method.
                                def value()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Value::ValueRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the var_P method.
                                def var_p()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Var_P::VarPRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the var_S method.
                                def var_s()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Var_S::VarSRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the varA method.
                                def var_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::VarA::VarARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the varPA method.
                                def var_p_a()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::VarPA::VarPARequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the vdb method.
                                def vdb()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Vdb::VdbRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the vlookup method.
                                def vlookup()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Vlookup::VlookupRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the weekday method.
                                def weekday()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Weekday::WeekdayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the weekNum method.
                                def week_num()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::WeekNum::WeekNumRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the weibull_Dist method.
                                def weibull_dist()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Weibull_Dist::WeibullDistRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the workDay method.
                                def work_day()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::WorkDay::WorkDayRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the workDay_Intl method.
                                def work_day_intl()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::WorkDay_Intl::WorkDayIntlRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the xirr method.
                                def xirr()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Xirr::XirrRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the xnpv method.
                                def xnpv()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Xnpv::XnpvRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the xor method.
                                def xor()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Xor::XorRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the year method.
                                def year()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Year::YearRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yearFrac method.
                                def year_frac()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::YearFrac::YearFracRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yield method.
                                def yield()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Yield::YieldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yieldDisc method.
                                def yield_disc()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::YieldDisc::YieldDiscRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the yieldMat method.
                                def yield_mat()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::YieldMat::YieldMatRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the z_Test method.
                                def z_test()
                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::Z_Test::ZTestRequestBuilder.new(@path_parameters, @request_adapter)
                                end
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
