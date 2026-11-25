.class Lcom/helpshift/cr;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/HashMap;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method private constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/helpshift/cr;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/bu;Lcom/helpshift/bv;)V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lcom/helpshift/cr;-><init>(Lcom/helpshift/bu;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1155
    aget-object v3, p1, v6

    .line 1156
    const-string/jumbo v0, "url"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1157
    const-string/jumbo v1, "messageId"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1158
    const-string/jumbo v2, "attachId"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1159
    const-string/jumbo v2, "position"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1162
    :try_start_0
    iget-object v5, p0, Lcom/helpshift/cr;->a:Lcom/helpshift/bu;

    invoke-virtual {v5, v0, v1, v4}, Lcom/helpshift/bu;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    const-string/jumbo v1, "success"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string/jumbo v1, "filepath"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string/jumbo v0, "position"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1171
    :goto_0
    return-object v0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v3, "Downloading image"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    const-string/jumbo v0, "success"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1171
    goto :goto_0
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 1177
    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    const-string/jumbo v0, "position"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1179
    iget-object v1, p0, Lcom/helpshift/cr;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->r(Lcom/helpshift/bu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 1180
    const-string/jumbo v1, "filepath"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    .line 1181
    iget-object v0, p0, Lcom/helpshift/cr;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->c(Lcom/helpshift/bu;)Lcom/helpshift/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 1184
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1152
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/helpshift/cr;->a([Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1152
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/helpshift/cr;->a(Ljava/util/HashMap;)V

    return-void
.end method
