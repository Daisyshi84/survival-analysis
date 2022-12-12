%include 'C:\Users\SSE6\Desktop\Daisy Tasks\Survival Analysis\PSS weighted analysis.sas';
%include 'C:\Users\SSE6\Desktop\Daisy Tasks\Survival Analysis\Weighted table 1s.sas';


proc import datafile= "C:\Users\SSE6\Desktop\Daisy Tasks\Survival Analysis\TSV_data.xlsx"
	out = TSV_data
	dbms=xlsx
	replace;
	getnames=yes;
run;

%fine_stratification (in_data= TSV_data, 
exposure=boosted_2_4weeks , PS_provided= no , ps_var= ps, 
ps_class_var_list= vaxstatus  age_grp , ps_cont_var_list= , 
interactions= , 
PSS_method= exposure, 
estimand= att,
n_of_strata= 50, out_data= PS_FS, id_var= obs, effect_estimate= rr,
outcome= overall_unvax, survival_time= survt, time_unit= days,
out_excel= C:\Users\SSE6\Desktop\Daisy Tasks\Survival Analysis\example_results_HR)
