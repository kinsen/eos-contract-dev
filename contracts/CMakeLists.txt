set(DEFAULT_SYSTEM_INCLUDE_FOLDERS ${EOSIO_INCLUDE_PATH}/libc++/upstream/include ${EOSIO_INCLUDE_PATH}/musl/upstream/include ${Boost_INCLUDE_DIR})
set(STANDARD_INCLUDE_FOLDERS ${EOSIO_INCLUDE_PATH} ${CMAKE_SOURCE_DIR}/contracts)

add_subdirectory(hello)

