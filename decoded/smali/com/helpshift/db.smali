.class Lcom/helpshift/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/da;


# direct methods
.method constructor <init>(Lcom/helpshift/da;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    invoke-static {v0}, Lcom/helpshift/da;->a(Lcom/helpshift/da;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    iget-object v1, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    invoke-static {v1}, Lcom/helpshift/da;->b(Lcom/helpshift/da;)Lcom/helpshift/dx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "rurl"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/da;->a(Lcom/helpshift/da;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    iget-object v1, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    invoke-static {v1}, Lcom/helpshift/da;->a(Lcom/helpshift/da;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/da;->a(Lcom/helpshift/da;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    invoke-static {v0}, Lcom/helpshift/da;->a(Lcom/helpshift/da;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    iget-object v1, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    invoke-static {v1}, Lcom/helpshift/da;->a(Lcom/helpshift/da;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/da;->b(Lcom/helpshift/da;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_0
    const-string/jumbo v0, "reviewed"

    invoke-static {v0}, Lcom/helpshift/br;->b(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/helpshift/db;->a:Lcom/helpshift/da;

    sget-object v1, Lcom/helpshift/ef;->a:Lcom/helpshift/ef;

    invoke-static {v0, v1}, Lcom/helpshift/da;->a(Lcom/helpshift/da;Lcom/helpshift/ef;)V

    .line 103
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/helpshift/ek;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
