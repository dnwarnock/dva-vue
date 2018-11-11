<template>
  <div><br/><br/><br/><br/><br/><br/><br/>
    <md-table v-model="properties" md-sort="name" md-sort-order="asc" md-card>
      <md-table-toolbar>
        <h1 class="md-title">Results</h1>
      </md-table-toolbar>

      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="address" md-sort-by="address">{{ item.address }}</md-table-cell>
        <md-table-cell md-label="zip" md-sort-by="zip" md-numeric>{{ item.zip }}</md-table-cell>
        <md-table-cell md-label="sqft" md-sort-by="sqft" md-numeric>{{ item.sqft }}</md-table-cell>
        <md-table-cell md-label="appraisal" md-sort-by="appraisal" md-numeric>{{ item.appraisal }}</md-table-cell>
      </md-table-row>
    </md-table>
  </div>
</template>

<script>
export default {
  name: 'ResultTable',
  data() {
    return {
    }
  },
  computed: {
    properties () {
      return this.$store.state.properties
    }
  }
}
</script>
