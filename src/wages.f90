	PROGRAM wages
        IMPLICIT NONE
    !
    ! Example of a Fortran program to calculate net pay
    ! given an employee's gross pay
    !
        REAL:: Gross_wage, Net_wage, Tax
        REAL:: Tax_rate = 0.25
        INTEGER:: Personal_allowance = 2000
        CHARACTER*60:: Their_FName, SurName 
        PRINT *,'Input employees name, surname'
        READ *,Their_FName, SurName
        PRINT *,'Input Gross wage (EUR)'
        READ *,Gross_wage
        Tax = 0;
        IF (Gross_wage .ge. Personal_allowance) THEN
            Tax = (Gross_wage - Personal_allowance) * Tax_rate
        END IF
        Net_wage = Gross_wage - Tax
        PRINT *,'Employee Name: ',Their_FName
        PRINT *,'Employee Surname: ',SurName
        PRINT *,'Gross Pay (EUR): ', Gross_wage
        PRINT *,'Tax (EUR): ',Tax
        PRINT *,'Net Pay (EUR):',Net_wage
	END PROGRAM wages

