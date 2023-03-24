<script setup>
import ItemTrend from './TrendItem.vue'
</script>

<template>
    <div class="theTrend">
        <ItemTrend>
            <template #trending>
                Trending in France
            </template>
            <template #trendingName>
                RIP Hugette
            </template>
            <template #trendingNb>
                3,506 Tweets
            </template>
        </ItemTrend>
    </div>
    <div class="theTrend">
        <ItemTrend>
            <template #trending>
                Only on Twitter · Trending
            </template>
            <template #trendingName>
                Ramadan
            </template>
            <template #trendingNb>
                893K Tweets
            </template>
        </ItemTrend>
    </div>
    <div class="theTrend">
        <ItemTrend>
            <template #trending>
                Comedy TV · Trending
            </template>
            <template #trendingName>
                Gueguette
            </template>
        </ItemTrend>
    </div>
</template>
