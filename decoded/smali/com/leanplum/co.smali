.class Lcom/leanplum/co;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/leanplum/co;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/leanplum/co",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-static {p0, v0, v1}, Lcom/leanplum/co;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/co;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/leanplum/co",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p1}, Lcom/leanplum/cg;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/leanplum/co;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/co;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/co",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/leanplum/co;

    invoke-direct {v0}, Lcom/leanplum/co;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/leanplum/co;->a:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lcom/leanplum/co;->b:Ljava/lang/String;

    .line 28
    iput-object p1, v0, Lcom/leanplum/co;->c:Ljava/lang/Object;

    .line 29
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/co;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/co",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string/jumbo p1, ""

    .line 49
    :cond_0
    const-string/jumbo v0, "file"

    invoke-static {p0, p1, v0}, Lcom/leanplum/co;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v6

    .line 50
    iget-object v0, v6, Lcom/leanplum/co;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/leanplum/co;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6}, Lcom/leanplum/co;->d()Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/leanplum/cg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;I)Z

    .line 52
    return-object v6
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2024
    if-nez p0, :cond_0

    .line 2031
    :goto_0
    return-object v0

    .line 2028
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/leanplum/co;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2029
    :catch_0
    move-exception v1

    .line 2030
    const-string/jumbo v2, "Leanplum"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error converting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to JSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2112
    if-nez p0, :cond_0

    .line 2129
    :goto_0
    return-object v2

    .line 2115
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2116
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 2117
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 2118
    if-eqz v0, :cond_1

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v4, :cond_3

    :cond_1
    move-object v0, v2

    .line 2127
    :cond_2
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2120
    :cond_3
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    .line 2121
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    .line 2122
    :cond_4
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_5

    .line 2123
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/leanplum/co;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 2124
    :cond_5
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 2125
    goto :goto_2

    :cond_6
    move-object v2, v3

    .line 2129
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2036
    if-nez p0, :cond_0

    .line 2043
    :goto_0
    return-object v0

    .line 2040
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2041
    :catch_0
    move-exception v1

    .line 2042
    const-string/jumbo v2, "Leanplum"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error converting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from JSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2088
    if-nez p0, :cond_0

    .line 2107
    :goto_0
    return-object v2

    .line 2091
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2092
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2093
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2094
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2095
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2096
    if-eqz v1, :cond_1

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v5, :cond_3

    :cond_1
    move-object v1, v2

    .line 2105
    :cond_2
    :goto_2
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2098
    :cond_3
    instance-of v5, v1, Lorg/json/JSONObject;

    if-eqz v5, :cond_4

    .line 2099
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 2100
    :cond_4
    instance-of v5, v1, Lorg/json/JSONArray;

    if-eqz v5, :cond_5

    .line 2101
    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 2102
    :cond_5
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v2

    .line 2103
    goto :goto_2

    :cond_6
    move-object v2, v3

    .line 2107
    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 2069
    if-nez p0, :cond_0

    .line 2070
    const/4 v0, 0x0

    .line 2083
    :goto_0
    return-object v0

    .line 2072
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2073
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2074
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 2075
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/leanplum/co;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2081
    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 2076
    :cond_2
    instance-of v3, v0, Ljava/lang/Iterable;

    if-eqz v3, :cond_3

    .line 2077
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_2

    .line 2078
    :cond_3
    if-nez v0, :cond_1

    .line 2079
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 2083
    goto :goto_0
.end method

.method public static a(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/co;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/co",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string/jumbo v0, "file"

    invoke-static {p0, p1, v0}, Lcom/leanplum/co;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v6

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/leanplum/co;->d:Z

    .line 58
    iget-object v0, v6, Lcom/leanplum/co;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/leanplum/co;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6}, Lcom/leanplum/co;->d()Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/leanplum/cg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;I)Z

    .line 60
    return-object v6
.end method

.method public static b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 2049
    if-nez p0, :cond_0

    .line 2050
    const/4 v0, 0x0

    .line 2064
    :goto_0
    return-object v0

    .line 2052
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2053
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2054
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2055
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 2056
    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/leanplum/co;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2062
    :cond_1
    :goto_2
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2057
    :cond_2
    instance-of v4, v1, Ljava/lang/Iterable;

    if-eqz v4, :cond_3

    .line 2058
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lcom/leanplum/co;->a(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_2

    .line 2059
    :cond_3
    if-nez v1, :cond_1

    .line 2060
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 2064
    goto :goto_0
.end method

.method public static b(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 2

    .prologue
    .line 1040
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/co;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/co",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string/jumbo p1, ""

    .line 67
    :cond_0
    const-string/jumbo v0, "action"

    invoke-static {p0, p1, v0}, Lcom/leanplum/co;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/io/InputStream;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-object v0, p0, Lcom/leanplum/co;->b:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-object v5

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/leanplum/co;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/leanplum/co;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/leanplum/co;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/leanplum/co;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/leanplum/g;->a(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/leanplum/co;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/leanplum/co;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/leanplum/co;->c:Ljava/lang/Object;

    return-object v0
.end method
