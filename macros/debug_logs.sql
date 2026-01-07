{% macro debug_logs() %}
    {% do log("Hook is run at: " ~ run_started_at, info=True) %}
    {% do log("Execute: " ~ execute, info=True) %}
    {% do log("Flags.WHICH: " ~ flags.WHICH, info=True) %}
    {% if execute %}
        {% do log("Running in execute mode", info=True) %}
        {% do log("Selected resources: " ~ selected_resources, info=True) %}
    {% endif %}
{% endmacro %}