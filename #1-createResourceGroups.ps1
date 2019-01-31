<#Author       : Dean Cefola
# Creation Date: 08-15-2018
# Usage        : Create Multiple Resource Groups

#************************************************************************
# Date                         Version      Changes
#------------------------------------------------------------------------
# 08/15/2018                     1.0        Intial Version
#
#************************************************************************
#
#>

####################
#    Input Array   #
####################
$RGName = @(
    @{Name="IgniteARMDemo-1";Location='northcentralus'} 
    @{Name="IgniteARMDemo-2";Location='southcentralus'} 
    @{Name="IgniteARMDemo-3";Location='centralus'} 
    @{Name="IgniteARMDemo-4";Location='eastus2'} 
    @{Name="IgniteARMDemo-5";Location='westus2'} 
)


###############################
#    Create Resource Groups   #
###############################
foreach ($RG in $RGName) {
    New-AzureRmResourceGroup `
        -Name $RG.Name `
        -Location $RG.Location `
        -Tag @{IgniteDemo="Cloud@Scale"} `
        -Force
}
