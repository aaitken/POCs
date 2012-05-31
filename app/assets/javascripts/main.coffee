require.config
  baseUrl: '/assets/'

#-------------------------------------------------------------------------

require [
  'connection-speed'
  'pubsub'], ->

  #aliases via parallel assignment
  [ConnectionStats, ps] = arguments

  #-----------------------------------------------------------------------

  ps.subscribe 'ConnectionStats.numbers', (map)->

    dd = document.querySelectorAll('dd')

    dd[0].innerHTML = map.tcp
    dd[1].innerHTML = map.rtt


  new ConnectionStats('/assets/transparent.gif')
