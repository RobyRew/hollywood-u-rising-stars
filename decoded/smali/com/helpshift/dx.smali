.class public final Lcom/helpshift/dx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/HashMap;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "tfidf.db"

    iput-object v0, p0, Lcom/helpshift/dx;->c:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/helpshift/dx;->a:Landroid/content/Context;

    .line 36
    const-string/jumbo v0, "HSJsonData"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method

.method private A(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "{}"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private B(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "[]"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private C(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private D(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private E(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private F(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private G(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 45
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 49
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_1
    return-object v2
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 84
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    const-string/jumbo v3, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method


# virtual methods
.method protected A()I
    .locals 1

    .prologue
    .line 784
    const-string/jumbo v0, "reviewCounter"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->D(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected B()I
    .locals 1

    .prologue
    .line 792
    const-string/jumbo v0, "launchReviewCounter"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->D(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected C()V
    .locals 2

    .prologue
    .line 796
    const-string/jumbo v0, "reviewed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    return-void
.end method

.method protected D()V
    .locals 2

    .prologue
    .line 800
    const-string/jumbo v0, "reviewed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    return-void
.end method

.method protected E()I
    .locals 1

    .prologue
    .line 804
    const-string/jumbo v0, "reviewed"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->D(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected F()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 812
    const-string/jumbo v0, "cachedImages"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected G()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 816
    const-string/jumbo v0, "etags"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected H()V
    .locals 3

    .prologue
    .line 856
    sget-object v0, Lcom/helpshift/dx;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/dx;->a:Landroid/content/Context;

    const-string/jumbo v1, "tfidf.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 860
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 861
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 862
    sput-object v0, Lcom/helpshift/dx;->d:Ljava/util/HashMap;

    .line 863
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "read index"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected I()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 871
    sget-object v0, Lcom/helpshift/dx;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method protected J()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 875
    const-string/jumbo v0, "dbFlag"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->G(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected K()V
    .locals 2

    .prologue
    .line 879
    const-string/jumbo v0, "dbFlag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 880
    return-void
.end method

.method protected L()V
    .locals 2

    .prologue
    .line 883
    const-string/jumbo v0, "dbFlag"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 884
    return-void
.end method

.method protected M()V
    .locals 2

    .prologue
    .line 887
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/dx;->d:Ljava/util/HashMap;

    .line 888
    iget-object v0, p0, Lcom/helpshift/dx;->a:Landroid/content/Context;

    const-string/jumbo v1, "tfidf.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 889
    invoke-virtual {p0}, Lcom/helpshift/dx;->L()V

    .line 890
    return-void
.end method

.method protected N()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 893
    const-string/jumbo v0, "failedMessages"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected O()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 897
    const-string/jumbo v0, "failedMessages"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 898
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 899
    const/4 v1, 0x0

    .line 900
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 901
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 902
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 903
    if-nez v1, :cond_0

    const-string/jumbo v5, "state"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x2

    if-le v5, v6, :cond_0

    .line 901
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 907
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v0, v1

    goto :goto_1

    .line 910
    :cond_1
    const-string/jumbo v0, "failedMessages"

    invoke-direct {p0, v0, v4}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 912
    :cond_2
    return-object v1
.end method

.method protected P()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 975
    const-string/jumbo v0, "failedApiCalls"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    const-string/jumbo v0, "replyText"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected R()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1003
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-string/jumbo v2, "conversationDetailSetTime"

    invoke-direct {p0, v2}, Lcom/helpshift/dx;->E(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1005
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1c20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1007
    :cond_0
    const-string/jumbo v0, "conversationDetail"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_1
    const-string/jumbo v0, "conversationDetail"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected S()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 1018
    const-string/jumbo v0, "serverTimeDelta"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->F(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    const-string/jumbo v0, "uuid"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1034
    const-string/jumbo v0, "screenshotPath"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public V()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1042
    const-string/jumbo v0, "screenShotDraft"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->G(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public W()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1050
    const-string/jumbo v0, "isConversationShowing"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->G(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public X()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1058
    const-string/jumbo v0, "requireEmail"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->G(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public Y()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1062
    const-string/jumbo v0, "fullPrivacy"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->G(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public Z()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1071
    :try_start_0
    const-string/jumbo v0, "customMetaData"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1074
    :goto_0
    return-object v0

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception getting meta from storage "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/helpshift/dx;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 140
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/helpshift/dx;->b(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v5

    move v0, v1

    .line 144
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 145
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 146
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 147
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string/jumbo v8, "id"

    const-string/jumbo v9, "id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v8, "created_at"

    const-string/jumbo v9, "created_at"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Lcom/helpshift/dy;

    invoke-direct {v0, p0}, Lcom/helpshift/dy;-><init>(Lcom/helpshift/dx;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 170
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v5, "id"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_2
    return-object v3
.end method

.method protected a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 178
    const-string/jumbo v0, "messages"

    const-string/jumbo v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/helpshift/dx;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    return-object p1
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 780
    const-string/jumbo v0, "reviewCounter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 611
    const-string/jumbo v0, "foreground"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 612
    return-void
.end method

.method protected a(Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 1014
    const-string/jumbo v0, "serverTimeDelta"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1015
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/helpshift/dx;->x()Ljava/lang/Integer;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/dx;->w()Lorg/json/JSONArray;

    move-result-object v1

    .line 725
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 726
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 728
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 729
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    const-string/jumbo v0, "breadCrumbs"

    invoke-direct {p0, v0, v2}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_1
    :goto_1
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Error while updating breadcrumbs limit"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/helpshift/dx;->u()Ljava/util/List;

    move-result-object v0

    .line 398
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, v0}, Lcom/helpshift/dx;->a(Ljava/util/List;)V

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Lcom/helpshift/dx;->q(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/helpshift/dx;->c()V

    .line 404
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 210
    const-string/jumbo v0, "messages"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 211
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 212
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 213
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 214
    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const-string/jumbo v0, "messages"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    invoke-direct {p0, p1, v1}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 220
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 953
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 954
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 955
    const-string/jumbo v2, "issue_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 956
    const-string/jumbo v2, "body"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    const-string/jumbo v2, "created_at"

    sget-object v3, Lcom/helpshift/e/v;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 958
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 959
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 960
    const-string/jumbo v2, "origin"

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 961
    const-string/jumbo v2, "refers"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 962
    const-string/jumbo v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    const-string/jumbo v0, "state"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 964
    invoke-virtual {p0, v1}, Lcom/helpshift/dx;->d(Lorg/json/JSONObject;)V

    .line 965
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0, p2}, Lcom/helpshift/dx;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/helpshift/dx;->P()Lorg/json/JSONObject;

    move-result-object v0

    .line 981
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 982
    const-string/jumbo v1, "failedApiCalls"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 983
    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 841
    sput-object p1, Lcom/helpshift/dx;->d:Ljava/util/HashMap;

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/dx;->a:Landroid/content/Context;

    const-string/jumbo v1, "tfidf.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 844
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 846
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 847
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 848
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 849
    invoke-virtual {p0}, Lcom/helpshift/dx;->K()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "store index"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 639
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 640
    const-string/jumbo v1, "openConversations"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 641
    return-void
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 18

    .prologue
    .line 238
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 239
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 240
    const-string/jumbo v1, "issuesIdList"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 241
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 242
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 244
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 250
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_8

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 252
    const-string/jumbo v1, "id"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 253
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    const-string/jumbo v1, "messages"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 256
    invoke-virtual {v7, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_1
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 261
    const-string/jumbo v2, "messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 263
    const-string/jumbo v2, "messages"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 264
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v13, "id"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 268
    const-string/jumbo v4, "newMessagesCnt"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 269
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/dx;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v4

    .line 271
    const-string/jumbo v1, "messages"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 272
    const/4 v2, 0x0

    .line 273
    const/4 v5, 0x0

    .line 274
    const/4 v1, 0x0

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_4

    .line 275
    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string/jumbo v16, "origin"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "admin"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 276
    add-int/lit8 v1, v1, 0x1

    .line 274
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 280
    :cond_4
    const/4 v2, 0x0

    move/from16 v17, v2

    move v2, v5

    move/from16 v5, v17

    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_6

    .line 281
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "origin"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "admin"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 282
    add-int/lit8 v2, v2, 0x1

    .line 280
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 286
    :cond_6
    sub-int/2addr v1, v2

    add-int/2addr v1, v13

    .line 290
    const-string/jumbo v2, "newMessagesCnt"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v1, v4

    .line 292
    :cond_7
    const-string/jumbo v2, "updated_at"

    const-string/jumbo v4, "updated_at"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string/jumbo v2, "status"

    const-string/jumbo v4, "status"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 295
    invoke-virtual {v7, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 338
    :catch_0
    move-exception v1

    .line 339
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Store issues"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :goto_5
    return-void

    .line 299
    :cond_8
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 300
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 301
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 302
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "newMessagesCnt"

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 303
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 304
    const-string/jumbo v6, "id"

    const-string/jumbo v10, "id"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v6, "updated_at"

    const-string/jumbo v10, "updated_at"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v6, "status"

    const-string/jumbo v10, "status"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_6

    .line 311
    :cond_9
    new-instance v1, Lcom/helpshift/dz;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/helpshift/dz;-><init>(Lcom/helpshift/dx;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 327
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 328
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 327
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 331
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_b

    .line 332
    const-string/jumbo v1, "totalNotifCnt"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    :cond_b
    const-string/jumbo v1, "issuesIdList"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 335
    const-string/jumbo v1, "id"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/dx;->b()V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/dx;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 192
    const-string/jumbo v0, "issue_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {p0, v1}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 194
    const-string/jumbo v0, "messages"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 195
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 196
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 197
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 198
    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 204
    :cond_1
    const-string/jumbo v0, "messages"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    invoke-direct {p0, v1, v2}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 206
    return-void
.end method

.method protected aa()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1092
    :try_start_0
    const-string/jumbo v0, "issueCSatStates"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1096
    :goto_0
    return-object v0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public ab()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1117
    const-string/jumbo v0, "hideNameAndEmail"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->G(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1125
    const-string/jumbo v0, "conversationPrefillText"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ad()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1133
    const-string/jumbo v0, "showSearchOnNewConversation"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->G(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 223
    invoke-direct {p0, p2}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 225
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 226
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 227
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 228
    const-string/jumbo v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 233
    :goto_1
    return-object v0

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 233
    goto :goto_1
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/dx;->d()Lorg/json/JSONArray;

    move-result-object v1

    .line 346
    invoke-virtual {p0}, Lcom/helpshift/dx;->u()Ljava/util/List;

    move-result-object v2

    .line 347
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 348
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 349
    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 350
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0, v2}, Lcom/helpshift/dx;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_1
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "updateOpenConversations"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected b(I)V
    .locals 2

    .prologue
    .line 788
    const-string/jumbo v0, "launchReviewCounter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1038
    const-string/jumbo v0, "screenShotDraft"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1039
    return-void
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 808
    const-string/jumbo v0, "cachedImages"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 809
    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 741
    const-string/jumbo v0, "config"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 742
    return-void
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 365
    sget-object v0, Lcom/helpshift/d/b/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "dia"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 366
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/helpshift/dx;->p(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/dx;->d()Lorg/json/JSONArray;

    move-result-object v1

    .line 370
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 371
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 372
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {p0}, Lcom/helpshift/dx;->u()Ljava/util/List;

    move-result-object v4

    .line 376
    const-string/jumbo v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    :cond_0
    invoke-virtual {p0, v3}, Lcom/helpshift/dx;->p(Ljava/lang/String;)V

    .line 393
    :cond_1
    :goto_1
    return-void

    .line 384
    :cond_2
    const-string/jumbo v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/helpshift/dx;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 386
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Lcom/helpshift/dx;->q(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "updateActiveConversation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1046
    const-string/jumbo v0, "isConversationShowing"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1047
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    const-string/jumbo v0, "issuesTs"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 821
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/dx;->G()Lorg/json/JSONObject;

    move-result-object v0

    .line 822
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string/jumbo v1, "etags"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "set etag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 749
    const-string/jumbo v0, "appConfig"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 750
    return-void
.end method

.method protected d()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 407
    const-string/jumbo v0, "issuesIdList"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 408
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 409
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 410
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    return-object v2
.end method

.method public d(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1054
    const-string/jumbo v0, "requireEmail"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1055
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 442
    const-string/jumbo v0, "identity"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method protected d(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/helpshift/dx;->N()Lorg/json/JSONArray;

    move-result-object v0

    .line 970
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 971
    const-string/jumbo v1, "failedMessages"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 972
    return-void
.end method

.method protected e()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 429
    const-string/jumbo v1, "issuesTs"

    invoke-direct {p0, v1}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const-string/jumbo v1, "ts"

    const-string/jumbo v2, "issuesTs"

    invoke-direct {p0, v2}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1066
    const-string/jumbo v0, "fullPrivacy"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1067
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-direct {p0, p1}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 475
    const-string/jumbo v1, "newMessagesCnt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 476
    const-string/jumbo v2, "newMessagesCnt"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 478
    const-string/jumbo v0, "totalNotifCnt"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->D(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 480
    const-string/jumbo v1, "totalNotifCnt"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    const-string/jumbo v0, "pushData"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 483
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 484
    const-string/jumbo v1, "pushData"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 485
    return-void
.end method

.method protected e(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 986
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 987
    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const-string/jumbo v0, "identity"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1113
    const-string/jumbo v0, "hideNameAndEmail"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1114
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 583
    const-string/jumbo v0, "apiKey"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 1080
    if-nez p1, :cond_0

    .line 1081
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1083
    :cond_0
    const-string/jumbo v0, "customMetaData"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1084
    return-void
.end method

.method protected g()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 459
    invoke-virtual {p0}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v1

    .line 461
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/helpshift/dx;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 464
    const-string/jumbo v2, "newMessagesCnt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 470
    :cond_0
    :goto_0
    return-object v0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "get active notif count"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected g(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1129
    const-string/jumbo v0, "showSearchOnNewConversation"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1130
    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 587
    const-string/jumbo v0, "domain"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method protected g(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 1087
    const-string/jumbo v0, "issueCSatStates"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1088
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/helpshift/dx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    return-void
.end method

.method protected h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 591
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    const-string/jumbo v0, "apiKey"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 595
    const-string/jumbo v0, "email"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const-string/jumbo v0, "domain"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 599
    const-string/jumbo v0, "username"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected k(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 607
    const-string/jumbo v0, "deviceToken"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const-string/jumbo v0, "email"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected l(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 615
    const-string/jumbo v0, "foregroundIssue"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    const-string/jumbo v0, "username"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 619
    const-string/jumbo v0, "libraryVersion"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string/jumbo v0, "deviceId"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 623
    const-string/jumbo v0, "applicationVersion"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    const-string/jumbo v0, "deviceToken"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected o(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 627
    const-string/jumbo v0, "sdkType"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    const-string/jumbo v0, "foregroundIssue"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 635
    const-string/jumbo v0, "activeConversation"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const-string/jumbo v0, "libraryVersion"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected q(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 644
    const-string/jumbo v0, "archivedConversationId"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    const-string/jumbo v0, "applicationVersion"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected r(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/helpshift/dx;->x()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/dx;->w()Lorg/json/JSONArray;

    move-result-object v1

    .line 667
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 668
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string/jumbo v2, "datetime"

    sget-object v4, Lcom/helpshift/e/v;->b:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 672
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 673
    if-le v2, v3, :cond_0

    .line 674
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 675
    sub-int v4, v2, v3

    .line 677
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 678
    add-int v5, v2, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 682
    :cond_1
    const-string/jumbo v1, "breadCrumbs"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_1
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Error while leaving breadcrumb"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string/jumbo v0, "sdkType"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected s(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 830
    const-string/jumbo v0, ""

    .line 832
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/dx;->G()Lorg/json/JSONObject;

    move-result-object v1

    .line 833
    const-string/jumbo v2, ""

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 837
    :goto_0
    return-object v0

    .line 834
    :catch_0
    move-exception v1

    .line 835
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "set etag"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    const-string/jumbo v0, "activeConversation"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected t(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 917
    const-string/jumbo v0, "failedMessages"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 918
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 919
    const/4 v1, 0x0

    .line 920
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 921
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 922
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 923
    if-nez v1, :cond_0

    const-string/jumbo v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 921
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v0, v1

    goto :goto_1

    .line 930
    :cond_1
    const-string/jumbo v0, "failedMessages"

    invoke-direct {p0, v0, v4}, Lcom/helpshift/dx;->c(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 932
    :cond_2
    return-object v1
.end method

.method protected u()Ljava/util/List;
    .locals 5

    .prologue
    .line 550
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    :try_start_0
    const-string/jumbo v0, "openConversations"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 553
    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 555
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 556
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getOpenConversations"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    :cond_0
    return-object v1
.end method

.method protected u(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 936
    const-string/jumbo v0, "failedMessages"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 937
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 938
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 939
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 940
    const-string/jumbo v4, "issue_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 941
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 938
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    :cond_1
    return-object v2
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string/jumbo v0, "archivedConversationId"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 990
    const-string/jumbo v0, "replyText"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public w()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 653
    const-string/jumbo v0, "breadCrumbs"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->B(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected w(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 998
    const-string/jumbo v0, "conversationDetail"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string/jumbo v0, "conversationDetailSetTime"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1000
    return-void
.end method

.method protected x()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "bcl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-object v0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected x(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1022
    const-string/jumbo v0, "uuid"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    return-void
.end method

.method protected y()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 745
    const-string/jumbo v0, "config"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1030
    const-string/jumbo v0, "screenshotPath"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void
.end method

.method public z()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 753
    const-string/jumbo v0, "appConfig"

    invoke-direct {p0, v0}, Lcom/helpshift/dx;->A(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1121
    const-string/jumbo v0, "conversationPrefillText"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/dx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    return-void
.end method
