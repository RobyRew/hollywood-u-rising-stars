.class final Lcom/leanplum/q;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/leanplum/callbacks/VariablesChangedCallback;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/leanplum/q;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/leanplum/q;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 3

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Lcom/leanplum/cg;->m()Ljava/util/Map;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/leanplum/q;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/leanplum/q;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/leanplum/q;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-virtual {v0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    .line 184
    :goto_0
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    const-string/jumbo v1, "includeDefaults"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v1, "includeMessageId"

    iget-object v2, p0, Lcom/leanplum/q;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v1, "getVars"

    invoke-static {v1, v0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/leanplum/r;

    invoke-direct {v1, p0}, Lcom/leanplum/r;-><init>(Lcom/leanplum/q;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bi;)V

    .line 173
    new-instance v1, Lcom/leanplum/s;

    invoke-direct {v1, p0}, Lcom/leanplum/s;-><init>(Lcom/leanplum/q;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bg;)V

    .line 179
    invoke-virtual {v0}, Lcom/leanplum/y;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
