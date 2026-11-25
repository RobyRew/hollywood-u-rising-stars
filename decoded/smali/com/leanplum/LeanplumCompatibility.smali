.class public Lcom/leanplum/LeanplumCompatibility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAMPAIGN_CONTENT:Ljava/lang/String; = "&cc"

.field public static final CAMPAIGN_MEDUIM:Ljava/lang/String; = "&cm"

.field public static final CAMPAIGN_NAME:Ljava/lang/String; = "&cn"

.field public static final CAMPAIGN_SOURCE:Ljava/lang/String; = "&cs"

.field public static final EVENT_ACTION:Ljava/lang/String; = "&ea"

.field public static final EVENT_CATEGORY:Ljava/lang/String; = "&ec"

.field public static final EVENT_LABEL:Ljava/lang/String; = "&el"

.field public static final EVENT_VALUE:Ljava/lang/String; = "&ev"

.field public static final EXCEPTION_DESCRIPTION:Ljava/lang/String; = "&exd"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "&iv"

.field public static final ITEM_NAME:Ljava/lang/String; = "&in"

.field public static final SOCIAL_ACTION:Ljava/lang/String; = "&sa"

.field public static final SOCIAL_NETWORK:Ljava/lang/String; = "&sn"

.field public static final SOCIAL_TARGET:Ljava/lang/String; = "&st"

.field public static final TIMING_CATEGORY:Ljava/lang/String; = "&utc"

.field public static final TIMING_LABEL:Ljava/lang/String; = "&utl"

.field public static final TIMING_NAME:Ljava/lang/String; = "&utv"

.field public static final TIMING_VALUE:Ljava/lang/String; = "&utt"

.field public static final TRANSACTION_AFFILIATION:Ljava/lang/String; = "&ta"

.field public static final TYPE:Ljava/lang/String; = "&t"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_1
    const-string/jumbo v0, " "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fTrack(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static fTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "errorClass"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4, v0}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method public static fTrack(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public static fTrack(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 70
    if-eqz p2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v2, v3, v1, p1}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {p0, v2, v3, v0, p1}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static fTrack(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v4, v5, v1, v2}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string/jumbo v0, ""

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v4, v5, v0, v1}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static gaTrack(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 97
    const-string/jumbo v1, "&ec"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "&ea"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "&el"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "&ec"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "&ea"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "&el"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/leanplum/LeanplumCompatibility;->a(Ljava/util/HashMap;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string/jumbo v0, "&ev"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_e

    .line 106
    const-string/jumbo v2, "&ev"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    move-object v1, v0

    .line 155
    :goto_0
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 157
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    .line 171
    :cond_2
    :goto_2
    return-void

    .line 109
    :cond_3
    :try_start_1
    const-string/jumbo v1, "&exd"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 110
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "&exd"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "&t"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/leanplum/LeanplumCompatibility;->a(Ljava/util/HashMap;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 114
    :cond_4
    const-string/jumbo v1, "&ta"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 115
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "&ta"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "&t"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/leanplum/LeanplumCompatibility;->a(Ljava/util/HashMap;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 119
    :cond_5
    const-string/jumbo v1, "&iv"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "&in"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 121
    :cond_6
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "&iv"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "&in"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "&t"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/leanplum/LeanplumCompatibility;->a(Ljava/util/HashMap;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 125
    :cond_7
    const-string/jumbo v1, "&sn"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "&sa"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "&st"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 128
    :cond_8
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "&sn"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "&sa"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "&st"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/leanplum/LeanplumCompatibility;->a(Ljava/util/HashMap;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 133
    :cond_9
    const-string/jumbo v0, "&utc"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "&utv"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "&utl"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 136
    :cond_a
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "&utc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "&utv"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "&utl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "&t"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/leanplum/LeanplumCompatibility;->a(Ljava/util/HashMap;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string/jumbo v0, "&utt"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_e

    .line 142
    const-string/jumbo v2, "&utt"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 145
    :cond_b
    const-string/jumbo v0, "&cm"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "&cc"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "&cn"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "&cs"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 162
    :cond_c
    if-eqz v1, :cond_d

    .line 163
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 164
    invoke-static {v2, v0, v1, v3}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/util/Map;)V

    goto/16 :goto_2

    .line 166
    :cond_d
    invoke-static {v2, v3}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_e
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0
.end method
