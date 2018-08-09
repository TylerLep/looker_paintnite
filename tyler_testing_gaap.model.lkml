connection: "paint"

# include all the views
include: "*.view"

datagroup: tyler_testing_gaap_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tyler_testing_gaap_default_datagroup

explore: account_profiles {
  join: accounts {
    type: left_outer
    sql_on: ${account_profiles.account_id} = ${accounts.id} ;;
    relationship: many_to_one
  }
}

explore: account_wishlist_links {
  join: wishlists {
    type: left_outer
    sql_on: ${account_wishlist_links.wishlist_id} = ${wishlists.id} ;;
    relationship: many_to_one
  }

  join: accounts {
    type: left_outer
    sql_on: ${account_wishlist_links.account_id} = ${accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${wishlists.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }
}

explore: accounts {}

explore: adjustments {
  join: licensees {
    type: left_outer
    sql_on: ${adjustments.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${adjustments.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: admin_profile {
  join: admins {
    type: left_outer
    sql_on: ${admin_profile.admin_id} = ${admins.admin_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${admin_profile.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${admin_profile.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: admins {
  join: licensees {
    type: left_outer
    sql_on: ${admins.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: age_segment_mappings {
  join: age_segments {
    type: left_outer
    sql_on: ${age_segment_mappings.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${age_segment_mappings.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }
}

explore: age_segments {}

explore: analytics_store {}

explore: analytics_store_values {
  join: analytics_store {
    type: left_outer
    sql_on: ${analytics_store_values.analytics_store_id} = ${analytics_store.id} ;;
    relationship: many_to_one
  }
}

explore: artist_licensee {
  join: artists {
    type: left_outer
    sql_on: ${artist_licensee.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artist_licensee.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${artists.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${artists.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: artist_tips {
  join: artists {
    type: left_outer
    sql_on: ${artist_tips.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${artist_tips.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${artist_tips.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${artists.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${artists.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }
}

explore: artists {
  join: paintnites {
    type: left_outer
    sql_on: ${artists.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${artists.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: assistant_licensee {
  join: assistants {
    type: left_outer
    sql_on: ${assistant_licensee.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${assistant_licensee.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${assistants.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${assistants.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: assistants {
  join: paintnites {
    type: left_outer
    sql_on: ${assistants.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${assistants.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${assistants.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: attendees_emails {
  join: tickets {
    type: left_outer
    sql_on: ${attendees_emails.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: attribute_events {
  join: events {
    type: left_outer
    sql_on: ${attribute_events.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: attributes {
    type: left_outer
    sql_on: ${attribute_events.attribute_id} = ${attributes.attribute_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: attributes {}

explore: banks {}

explore: brands {
  join: sponsors {
    type: left_outer
    sql_on: ${brands.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }
}

explore: calendars {}

explore: campaigns {
  join: coupons {
    type: left_outer
    sql_on: ${campaigns.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${campaigns.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${campaigns.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${campaigns.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: canceled_events {
  join: events {
    type: left_outer
    sql_on: ${canceled_events.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: canceled_reasons {
    type: left_outer
    sql_on: ${canceled_events.canceled_reason_id} = ${canceled_reasons.canceled_reason_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: canceled_order_lines {
  join: orders {
    type: left_outer
    sql_on: ${canceled_order_lines.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: expenses {
    type: left_outer
    sql_on: ${canceled_order_lines.expense_id} = ${expenses.expense_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${orders.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: payments {
    type: left_outer
    sql_on: ${expenses.payment_id} = ${payments.payment_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${payments.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: canceled_reasons {}

explore: card_logs {}

explore: career {}

explore: cart_items {
  join: carts {
    type: left_outer
    sql_on: ${cart_items.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${cart_items.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${campaigns.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${campaigns.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${campaigns.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${campaigns.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: carts {}

explore: categories {}

explore: channel_types {}

explore: channels {
  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: charity_events {
  join: events {
    type: left_outer
    sql_on: ${charity_events.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${charity_events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: accounts {
    type: left_outer
    sql_on: ${charity_events.account_id} = ${accounts.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: chart_of_account_dtl {
  join: chart_of_accounts {
    type: left_outer
    sql_on: ${chart_of_account_dtl.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: chart_of_accounts {}

explore: checkout_answers {
  join: tickets {
    type: left_outer
    sql_on: ${checkout_answers.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_log {}

explore: checkout_questions {}

explore: cj_ticketlogs {
  join: tickets {
    type: left_outer
    sql_on: ${cj_ticketlogs.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: colortags {}

explore: community_nps {}

explore: compatibility_sessions {
  join: admins {
    type: left_outer
    sql_on: ${compatibility_sessions.admin_id} = ${admins.admin_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${admins.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: complimentary_region_deals {
  join: campaigns {
    type: left_outer
    sql_on: ${complimentary_region_deals.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${complimentary_region_deals.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${complimentary_region_deals.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${campaigns.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${campaigns.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: config_table {}

explore: contactus_info {}

explore: corporate_customers {
  join: customers {
    type: left_outer
    sql_on: ${corporate_customers.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${customers.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: corporate_emails {
  join: events {
    type: left_outer
    sql_on: ${corporate_emails.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: corporate_events {
  join: events {
    type: left_outer
    sql_on: ${corporate_events.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${corporate_events.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${corporate_events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${corporate_events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${corporate_events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${corporate_events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: countries {}

explore: coupon_alternate {}

explore: coupon_attempts_log {
  join: events {
    type: left_outer
    sql_on: ${coupon_attempts_log.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: coupon_transactions {}

explore: coupons {
  join: paintnites {
    type: left_outer
    sql_on: ${coupons.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: coupons_delete {
  join: coupons {
    type: left_outer
    sql_on: ${coupons_delete.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${coupons.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: coupons_groupon {
  join: coupons {
    type: left_outer
    sql_on: ${coupons_groupon.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${coupons_groupon.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons_groupon.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons_groupon.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons_groupon.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: coupons_posted {
  join: coupons {
    type: left_outer
    sql_on: ${coupons_posted.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${coupons.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: creator {}

explore: credit_balances {
  join: licensees {
    type: left_outer
    sql_on: ${credit_balances.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: credit_changes {
  join: licensees {
    type: left_outer
    sql_on: ${credit_changes.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: credit_lines {
  join: licensees {
    type: left_outer
    sql_on: ${credit_lines.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: currency_rates {}

explore: customers {
  join: paintnites {
    type: left_outer
    sql_on: ${customers.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: databasechangelog {}

explore: databasechangeloglock {}

explore: dealsite_paintnite {
  join: dealsites {
    type: left_outer
    sql_on: ${dealsite_paintnite.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${dealsite_paintnite.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: dealsites {}

explore: disbursement_job_errors {}

explore: disbursement_jobs {}

explore: disbursement_posted {
  join: disbursements {
    type: left_outer
    sql_on: ${disbursement_posted.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${disbursements.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: disbursement_procedure_verification_log {}

explore: disbursements {
  join: licensees {
    type: left_outer
    sql_on: ${disbursements.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: email_shares {
  join: events {
    type: left_outer
    sql_on: ${email_shares.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: email_template_categories {}

explore: email_templates {}

explore: error_emails {}

explore: error_log {
  join: run_log {
    type: left_outer
    sql_on: ${error_log.run_log_id} = ${run_log.run_log_id} ;;
    relationship: many_to_one
  }
}

explore: event_additional_fees {
  join: adjustments {
    type: left_outer
    sql_on: ${event_additional_fees.adjustment_id} = ${adjustments.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${event_additional_fees.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${adjustments.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${adjustments.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }
}

explore: event_cancellations {
  join: events {
    type: left_outer
    sql_on: ${event_cancellations.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: event_fee_types {}

explore: event_managers {}

explore: event_special_detail {
  join: events {
    type: left_outer
    sql_on: ${event_special_detail.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: event_types {}

explore: events {
  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: events_posted {
  join: events {
    type: left_outer
    sql_on: ${events_posted.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: exception_log {}

explore: expenses {
  join: licensees {
    type: left_outer
    sql_on: ${expenses.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${expenses.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: payments {
    type: left_outer
    sql_on: ${expenses.payment_id} = ${payments.payment_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${payments.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: faqs {}

explore: favourite_paintings {
  join: paintings {
    type: left_outer
    sql_on: ${favourite_paintings.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${paintings.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${paintings.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintings.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: fbauth {
  join: paintnites {
    type: left_outer
    sql_on: ${fbauth.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: featured_painting_exhibitions {}

explore: featured_paintings {
  join: paintings {
    type: left_outer
    sql_on: ${featured_paintings.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: admins {
    type: left_outer
    sql_on: ${featured_paintings.admin_id} = ${admins.admin_id} ;;
    relationship: many_to_one
  }

  join: featured_painting_exhibitions {
    type: left_outer
    sql_on: ${featured_paintings.featured_painting_exhibition_id} = ${featured_painting_exhibitions.id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${paintings.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${paintings.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintings.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: featured_paintings_queue {}

explore: files {}

explore: files_filetags {
  join: filetags {
    type: left_outer
    sql_on: ${files_filetags.filetag_id} = ${filetags.filetag_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${files_filetags.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }
}

explore: filetags {}

explore: fundraiser_charity_payouts {
  join: events {
    type: left_outer
    sql_on: ${fundraiser_charity_payouts.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: gallery {
  join: paintnites {
    type: left_outer
    sql_on: ${gallery.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: general_journal {}

explore: gift_cards {
  join: paintnites {
    type: left_outer
    sql_on: ${gift_cards.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${gift_cards.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${gift_cards.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${campaigns.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${campaigns.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: gifts {
  join: purchases {
    type: left_outer
    sql_on: ${gifts.purchase_id} = ${purchases.id} ;;
    relationship: many_to_one
  }

  join: carts {
    type: left_outer
    sql_on: ${purchases.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${purchases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }
}

explore: kit_items {}

explore: kititem_country {}

explore: landings {}

explore: licensee_applications {
  join: paintnites {
    type: left_outer
    sql_on: ${licensee_applications.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: licensees {
  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: list_of_value_types {}

explore: list_of_values {}

explore: locations {
  join: paintnites {
    type: left_outer
    sql_on: ${locations.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${locations.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: mail_contents {}

explore: mail_contents_supply {}

explore: news {
  join: paintnites {
    type: left_outer
    sql_on: ${news.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: nites {}

explore: occasions {}

explore: occasions_tickets {
  join: occasions {
    type: left_outer
    sql_on: ${occasions_tickets.occasion_id} = ${occasions.id} ;;
    relationship: many_to_one
  }

  join: tickets {
    type: left_outer
    sql_on: ${occasions_tickets.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: licensees {
    type: left_outer
    sql_on: ${orders.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: organizations {
  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: paintings {
  join: artists {
    type: left_outer
    sql_on: ${paintings.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${paintings.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintings.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: paintnites {
  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: paintnites_mark_bak1 {
  join: paintnites {
    type: left_outer
    sql_on: ${paintnites_mark_bak1.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: pass_region_deals {
  join: campaigns {
    type: left_outer
    sql_on: ${pass_region_deals.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: pass_regions {
    type: left_outer
    sql_on: ${pass_region_deals.pass_region_id} = ${pass_regions.id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${campaigns.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${campaigns.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${campaigns.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${campaigns.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: pass_regions {
  join: paintnites {
    type: left_outer
    sql_on: ${pass_regions.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${pass_regions.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: password_history {
  join: admins {
    type: left_outer
    sql_on: ${password_history.admin_id} = ${admins.admin_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${admins.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: password_history_archive {
  join: password_history {
    type: left_outer
    sql_on: ${password_history_archive.password_history_id} = ${password_history.password_history_id} ;;
    relationship: many_to_one
  }

  join: admins {
    type: left_outer
    sql_on: ${password_history_archive.admin_id} = ${admins.admin_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${admins.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: payments {
  join: licensees {
    type: left_outer
    sql_on: ${payments.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${payments.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: persons {}

explore: photos {}

explore: postal_codes {
  join: paintnites {
    type: left_outer
    sql_on: ${postal_codes.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: private_events {
  join: events {
    type: left_outer
    sql_on: ${private_events.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: product_types {}

explore: products {
  join: paintnites {
    type: left_outer
    sql_on: ${products.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: promo_answers {
  join: promos {
    type: left_outer
    sql_on: ${promo_answers.promo_id} = ${promos.promo_id} ;;
    relationship: many_to_one
  }

  join: tickets {
    type: left_outer
    sql_on: ${promo_answers.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${promos.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: brands {
    type: left_outer
    sql_on: ${promos.brand_id} = ${brands.brand_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${brands.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: promo_data_alexandani {
  join: tickets {
    type: left_outer
    sql_on: ${promo_data_alexandani.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: promo_question_types {}

explore: promo_questions {
  join: promos {
    type: left_outer
    sql_on: ${promo_questions.promo_id} = ${promos.promo_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${promos.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: brands {
    type: left_outer
    sql_on: ${promos.brand_id} = ${brands.brand_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${brands.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }
}

explore: promo_types {}

explore: promos {
  join: events {
    type: left_outer
    sql_on: ${promos.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: brands {
    type: left_outer
    sql_on: ${promos.brand_id} = ${brands.brand_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${brands.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }
}

explore: purchase_records {
  join: purchases {
    type: left_outer
    sql_on: ${purchase_records.purchase_id} = ${purchases.id} ;;
    relationship: many_to_one
  }

  join: carts {
    type: left_outer
    sql_on: ${purchases.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${purchases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }
}

explore: purchase_tickets {
  join: purchases {
    type: left_outer
    sql_on: ${purchase_tickets.purchase_id} = ${purchases.id} ;;
    relationship: many_to_one
  }

  join: tickets {
    type: left_outer
    sql_on: ${purchase_tickets.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: carts {
    type: left_outer
    sql_on: ${purchases.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${purchases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: purchases {
  join: carts {
    type: left_outer
    sql_on: ${purchases.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${purchases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }
}

explore: recognition {}

explore: recognition_licensee {
  join: recognition {
    type: left_outer
    sql_on: ${recognition_licensee.recognition_id} = ${recognition.recognition_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${recognition_licensee.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: redemptions {
  join: promos {
    type: left_outer
    sql_on: ${redemptions.promo_id} = ${promos.promo_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${promos.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: brands {
    type: left_outer
    sql_on: ${promos.brand_id} = ${brands.brand_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${brands.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }
}

explore: refunded_codes {
  join: paintnites {
    type: left_outer
    sql_on: ${refunded_codes.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: regional_data {
  join: paintnites {
    type: left_outer
    sql_on: ${regional_data.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: report_sales {}

explore: role_rights {}

explore: run_log {}

explore: sale_paintings {
  join: artists {
    type: left_outer
    sql_on: ${sale_paintings.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${artists.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${artists.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: sales_rep {}

explore: schema_version {}

explore: session_attachments {}

explore: shipping_addresses {
  join: licensees {
    type: left_outer
    sql_on: ${shipping_addresses.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: sms {
  join: events {
    type: left_outer
    sql_on: ${sms.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: special_classification {}

explore: special_detail {}

explore: sponsor_contracts {
  join: sponsors {
    type: left_outer
    sql_on: ${sponsor_contracts.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }
}

explore: sponsor_payments {
  join: payments {
    type: left_outer
    sql_on: ${sponsor_payments.payment_id} = ${payments.payment_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${payments.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${payments.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${licensees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }
}

explore: sponsors {}

explore: sponsors_details {
  join: sponsors {
    type: left_outer
    sql_on: ${sponsors_details.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }
}

explore: stencil_collection_stencils {
  join: stencil_collections {
    type: left_outer
    sql_on: ${stencil_collection_stencils.stencil_collection_id} = ${stencil_collections.id} ;;
    relationship: many_to_one
  }

  join: stencils {
    type: left_outer
    sql_on: ${stencil_collection_stencils.stencil_id} = ${stencils.id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${stencil_collections.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${paintings.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${paintings.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintings.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: stencil_collections {
  join: paintings {
    type: left_outer
    sql_on: ${stencil_collections.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${paintings.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${paintings.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintings.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: stencils {
  join: artists {
    type: left_outer
    sql_on: ${stencils.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${artists.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${artists.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: survey_answers {
  join: surveys {
    type: left_outer
    sql_on: ${survey_answers.survey_id} = ${surveys.survey_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${survey_answers.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: tickets {
    type: left_outer
    sql_on: ${survey_answers.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${survey_answers.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }
}

explore: survey_questions {
  join: surveys {
    type: left_outer
    sql_on: ${survey_questions.survey_id} = ${surveys.survey_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${survey_questions.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: surveys {
  join: paintnites {
    type: left_outer
    sql_on: ${surveys.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: target_customers {
  join: nites {
    type: left_outer
    sql_on: ${target_customers.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }
}

explore: temp_coupons {
  join: paintnites {
    type: left_outer
    sql_on: ${temp_coupons.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: temp_coupons_updater {
  join: coupons {
    type: left_outer
    sql_on: ${temp_coupons_updater.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${temp_coupons_updater.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${temp_coupons_updater.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${temp_coupons_updater.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${temp_coupons_updater.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: temp_deal_coupons {
  join: paintnites {
    type: left_outer
    sql_on: ${temp_deal_coupons.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: testimonials {
  join: events {
    type: left_outer
    sql_on: ${testimonials.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${testimonials.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: themetags {}

explore: ticket_attachments {
  join: tickets {
    type: left_outer
    sql_on: ${ticket_attachments.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: ticket_reschedule_group {
  join: tickets {
    type: left_outer
    sql_on: ${ticket_reschedule_group.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: ticket_status {}

explore: tickets {
  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: tickets_canceled_fees {
  join: tickets {
    type: left_outer
    sql_on: ${tickets_canceled_fees.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets_canceled_fees.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets_canceled_fees.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${campaigns.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: tickets_paid {
  join: tickets {
    type: left_outer
    sql_on: ${tickets_paid.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: tickets_posted {
  join: tickets {
    type: left_outer
    sql_on: ${tickets_posted.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: tmp_coupons_dan {
  join: paintnites {
    type: left_outer
    sql_on: ${tmp_coupons_dan.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: tickets {
    type: left_outer
    sql_on: ${tmp_coupons_dan.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tmp_coupons_dan.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }
}

explore: tmp_tickets_dan {
  join: tickets {
    type: left_outer
    sql_on: ${tmp_tickets_dan.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tmp_tickets_dan.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${tmp_tickets_dan.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }
}

explore: tmp_tickets_result {
  join: tickets {
    type: left_outer
    sql_on: ${tmp_tickets_result.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tmp_tickets_result.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tmp_tickets_result.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${campaigns.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: tracking_tempdata {}

explore: transaction_history {}

explore: transaction_log {
  join: purchases {
    type: left_outer
    sql_on: ${transaction_log.purchase_id} = ${purchases.id} ;;
    relationship: many_to_one
  }

  join: carts {
    type: left_outer
    sql_on: ${purchases.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${purchases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }
}

explore: transaction_log_meta {}

explore: trx_coupons {
  join: coupons {
    type: left_outer
    sql_on: ${trx_coupons.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${trx_coupons.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${trx_coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${trx_coupons.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${trx_coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: trx_disbursements {
  join: disbursements {
    type: left_outer
    sql_on: ${trx_disbursements.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${trx_disbursements.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${disbursements.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: trx_events {
  join: events {
    type: left_outer
    sql_on: ${trx_events.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${trx_events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${trx_events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${trx_events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${trx_events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${trx_events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${trx_events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${trx_events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: trx_events_fs {
  join: events {
    type: left_outer
    sql_on: ${trx_events_fs.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${trx_events_fs.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: trx_gifts {
  join: paintnites {
    type: left_outer
    sql_on: ${trx_gifts.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: trx_sponsorships {
  join: payments {
    type: left_outer
    sql_on: ${trx_sponsorships.payment_id} = ${payments.payment_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${trx_sponsorships.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${payments.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${payments.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${licensees.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${disbursements.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: trx_tickets {
  join: tickets {
    type: left_outer
    sql_on: ${trx_tickets.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${trx_tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${trx_tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${trx_tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${trx_tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: trx_tips {
  join: paintnites {
    type: left_outer
    sql_on: ${trx_tips.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: user_nite_ids {
  join: nites {
    type: left_outer
    sql_on: ${user_nite_ids.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }
}

explore: venue_agreement {}

explore: venue_applications {
  join: paintnites {
    type: left_outer
    sql_on: ${venue_applications.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${paintnites.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: venue_types {}

explore: virtual_fundraisers {
  join: accounts {
    type: left_outer
    sql_on: ${virtual_fundraisers.account_id} = ${accounts.id} ;;
    relationship: many_to_one
  }
}

explore: vouchers {
  join: tickets {
    type: left_outer
    sql_on: ${vouchers.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: events {
    type: left_outer
    sql_on: ${tickets.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${tickets.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${tickets.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: coupons {
    type: left_outer
    sql_on: ${tickets.coupon_id} = ${coupons.coupon_id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${coupons.campaign_id} = ${campaigns.campaign_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${coupons.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${campaigns.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${campaigns.channel_id} = ${channels.channel_id} ;;
    relationship: many_to_one
  }

  join: dealsites {
    type: left_outer
    sql_on: ${campaigns.dealsite_id} = ${dealsites.dealsite_id} ;;
    relationship: many_to_one
  }

  join: channel_types {
    type: left_outer
    sql_on: ${channels.channel_type_id} = ${channel_types.id} ;;
    relationship: many_to_one
  }
}

explore: vw_analytics_data {
  join: purchases {
    type: left_outer
    sql_on: ${vw_analytics_data.purchase_id} = ${purchases.id} ;;
    relationship: many_to_one
  }

  join: carts {
    type: left_outer
    sql_on: ${purchases.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${purchases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }
}

explore: vw_artists {
  join: artists {
    type: left_outer
    sql_on: ${vw_artists.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${artists.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${artists.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: vw_artists_perm {
  join: artists {
    type: left_outer
    sql_on: ${vw_artists_perm.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${artists.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${artists.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${artists.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${artists.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: vw_transaction_data {
  join: purchases {
    type: left_outer
    sql_on: ${vw_transaction_data.purchase_id} = ${purchases.id} ;;
    relationship: many_to_one
  }

  join: carts {
    type: left_outer
    sql_on: ${purchases.cart_id} = ${carts.id} ;;
    relationship: many_to_one
  }

  join: persons {
    type: left_outer
    sql_on: ${purchases.person_id} = ${persons.id} ;;
    relationship: many_to_one
  }
}

explore: wishlist_event_links {
  join: events {
    type: left_outer
    sql_on: ${wishlist_event_links.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }

  join: wishlists {
    type: left_outer
    sql_on: ${wishlist_event_links.wishlist_id} = ${wishlists.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${events.location_id} = ${locations.location_id} ;;
    relationship: many_to_one
  }

  join: artists {
    type: left_outer
    sql_on: ${events.artist_id} = ${artists.artist_id} ;;
    relationship: many_to_one
  }

  join: paintnites {
    type: left_outer
    sql_on: ${events.paintnite_id} = ${paintnites.paintnite_id} ;;
    relationship: many_to_one
  }

  join: paintings {
    type: left_outer
    sql_on: ${events.painting_id} = ${paintings.painting_id} ;;
    relationship: many_to_one
  }

  join: assistants {
    type: left_outer
    sql_on: ${events.assistant_id} = ${assistants.assistant_id} ;;
    relationship: many_to_one
  }

  join: licensees {
    type: left_outer
    sql_on: ${events.licensee_id} = ${licensees.licensee_id} ;;
    relationship: many_to_one
  }

  join: event_types {
    type: left_outer
    sql_on: ${events.event_type_id} = ${event_types.event_type_id} ;;
    relationship: many_to_one
  }

  join: sales_rep {
    type: left_outer
    sql_on: ${events.sales_rep_id} = ${sales_rep.sales_rep_id} ;;
    relationship: many_to_one
  }

  join: disbursements {
    type: left_outer
    sql_on: ${events.disbursement_id} = ${disbursements.disbursement_id} ;;
    relationship: many_to_one
  }

  join: nites {
    type: left_outer
    sql_on: ${events.nite_id} = ${nites.id} ;;
    relationship: many_to_one
  }

  join: age_segments {
    type: left_outer
    sql_on: ${events.age_segment_id} = ${age_segments.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${paintnites.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: calendars {
    type: left_outer
    sql_on: ${organizations.calendar_id} = ${calendars.id} ;;
    relationship: many_to_one
  }

  join: chart_of_accounts {
    type: left_outer
    sql_on: ${organizations.chart_of_account_id} = ${chart_of_accounts.id} ;;
    relationship: many_to_one
  }

  join: creator {
    type: left_outer
    sql_on: ${wishlists.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }
}

explore: wishlists {
  join: creator {
    type: left_outer
    sql_on: ${wishlists.creator_id} = ${creator.creator_id} ;;
    relationship: many_to_one
  }
}
