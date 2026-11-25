.class Lcom/helpshift/x;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 128
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 129
    iget-object v1, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/s;->a(Lcom/helpshift/s;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 131
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    iget-object v2, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v2

    const-string/jumbo v3, "created_at"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/helpshift/dx;->c(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->a(Lorg/json/JSONArray;)V

    .line 134
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->c(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->j(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->d(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->i(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->v(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->w(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->e(Lcom/helpshift/s;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string/jumbo v0, "p"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->f(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->g(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->l(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    iget-object v1, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->g(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v3}, Lcom/helpshift/s;->f(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/helpshift/e/b;->a(Lcom/helpshift/dx;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/s;->a(Lcom/helpshift/s;Lcom/helpshift/g/a;)Lcom/helpshift/g/a;

    .line 145
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->k(Lcom/helpshift/s;)Lcom/helpshift/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->h(Lcom/helpshift/s;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->i(Lcom/helpshift/s;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v3}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v4}, Lcom/helpshift/s;->g(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "sc"

    iget-object v7, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v7}, Lcom/helpshift/s;->j(Lcom/helpshift/s;)Lcom/helpshift/g/a;

    move-result-object v7

    iget-object v7, v7, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v8}, Lcom/helpshift/s;->j(Lcom/helpshift/s;)Lcom/helpshift/g/a;

    move-result-object v8

    iget-object v8, v8, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/al;->t()V

    .line 155
    :goto_1
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/helpshift/x;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->l(Lcom/helpshift/s;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
