view: trx_events {
  sql_table_name: core.trx_events ;;

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
  }

  dimension: assistant_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.assistant_id ;;
  }

  dimension: cc_charge {
    type: number
    sql: ${TABLE}.cc_charge ;;
  }

  dimension: cc_charge_oc {
    type: number
    sql: ${TABLE}.cc_charge_oc ;;
  }

  dimension: charity {
    type: number
    sql: ${TABLE}.charity ;;
  }

  dimension: charity_oc {
    type: number
    sql: ${TABLE}.charity_oc ;;
  }

  dimension: comission_hq {
    type: number
    sql: ${TABLE}.comission_hq ;;
  }

  dimension: comission_hq_oc {
    type: number
    sql: ${TABLE}.comission_hq_oc ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension: commission_oc {
    type: number
    sql: ${TABLE}.commission_oc ;;
  }

  dimension: coupon_revenue {
    type: number
    sql: ${TABLE}.coupon_revenue ;;
  }

  dimension: coupon_revenue_hq {
    type: number
    sql: ${TABLE}.coupon_revenue_hq ;;
  }

  dimension: coupon_revenue_hq_oc {
    type: number
    sql: ${TABLE}.coupon_revenue_hq_oc ;;
  }

  dimension: coupon_revenue_oc {
    type: number
    sql: ${TABLE}.coupon_revenue_oc ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: dealprice_revenue {
    type: number
    sql: ${TABLE}.dealprice_revenue ;;
  }

  dimension: dealprice_revenue_oc {
    type: number
    sql: ${TABLE}.dealprice_revenue_oc ;;
  }

  dimension: dealsite_comission {
    type: number
    sql: ${TABLE}.dealsite_comission ;;
  }

  dimension: dealsite_comission_oc {
    type: number
    sql: ${TABLE}.dealsite_comission_oc ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_status {
    type: yesno
    sql: ${TABLE}.event_status ;;
  }

  dimension: event_type {
    type: number
    sql: ${TABLE}.event_type ;;
  }

  dimension: gift_tickets_sold {
    type: number
    sql: ${TABLE}.gift_tickets_sold ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
  }

  dimension: gross_revenue_oc {
    type: number
    sql: ${TABLE}.gross_revenue_oc ;;
  }

  dimension: hq_portion {
    type: number
    sql: ${TABLE}.hq_portion ;;
  }

  dimension: hq_portion_oc {
    type: number
    sql: ${TABLE}.hq_portion_oc ;;
  }

  dimension: is_fundraiser {
    type: yesno
    sql: ${TABLE}.is_fundraiser ;;
  }

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
  }

  dimension: licensee_share {
    type: number
    sql: ${TABLE}.licensee_share ;;
  }

  dimension: licensee_share_oc {
    type: number
    sql: ${TABLE}.licensee_share_oc ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: manager_id {
    type: number
    sql: ${TABLE}.manager_id ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified_date ;;
  }

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  dimension: no_of_dealsite_ticket {
    type: number
    sql: ${TABLE}.no_of_dealsite_ticket ;;
  }

  dimension: no_of_direct_ticket {
    type: number
    sql: ${TABLE}.no_of_direct_ticket ;;
  }

  dimension: no_of_tickets {
    type: number
    sql: ${TABLE}.no_of_tickets ;;
  }

  dimension: painting_expense {
    type: number
    sql: ${TABLE}.painting_expense ;;
  }

  dimension: painting_expense_oc {
    type: number
    sql: ${TABLE}.painting_expense_oc ;;
  }

  dimension: painting_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.painting_id ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: private_admin_fee {
    type: number
    sql: ${TABLE}.private_admin_fee ;;
  }

  dimension: private_event_cost {
    type: number
    sql: ${TABLE}.private_event_cost ;;
  }

  dimension: private_event_cost_oc {
    type: number
    sql: ${TABLE}.private_event_cost_oc ;;
  }

  dimension: ticket_revenue {
    type: number
    sql: ${TABLE}.ticket_revenue ;;
  }

  dimension: ticket_revenue_oc {
    type: number
    sql: ${TABLE}.ticket_revenue_oc ;;
  }

  dimension: total_revenue {
    type: number
    sql: ${TABLE}.total_revenue ;;
  }

  dimension: total_revenue_oc {
    type: number
    sql: ${TABLE}.total_revenue_oc ;;
  }

  dimension: total_sale_price {
    type: number
    sql: ${TABLE}.total_sale_price ;;
  }

  dimension: venue_capacity {
    type: number
    sql: ${TABLE}.venue_capacity ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      events.event_id,
      locations.location_id,
      locations.contact_name,
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name,
      assistants.assistant_id,
      assistants.first_name,
      assistants.last_name,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      paintings.painting_id,
      nites.id,
      nites.name
    ]
  }
}
