{{ config(enabled=var('netsuite_data_model', 'netsuite') == var('netsuite_data_model_override','netsuite2')) }}

with base as (

    select * 
    from {{ ref('stg_netsuite2__transaction_status_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_netsuite2__transaction_status_tmp')),
                staging_columns=get_netsuite2_transaction_status_columns()
            )
        }}
    from base
),

final as (
    
    select
        _fivetran_synced,
        id as transaction_status_id,
        fullname as transaction_status_full_name,
        name as transaction_status_name,
        date_deleted,
        trantype as transaction_type

    from fields
    where not coalesce(_fivetran_deleted, false)
)

select * 
from final
