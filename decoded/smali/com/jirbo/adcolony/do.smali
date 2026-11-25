.class Lcom/jirbo/adcolony/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/jirbo/adcolony/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return v6

    .line 128
    :cond_0
    const-string/jumbo v0, "update"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->a:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "install"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->b:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "dynamic_interests"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->c:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "user_meta_data"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->d:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "in_app_purchase"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->e:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "session_end"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->g:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "session_start"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->f:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    .line 138
    iget-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "update"

    iget-object v2, p0, Lcom/jirbo/adcolony/do;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "install"

    iget-object v2, p0, Lcom/jirbo/adcolony/do;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "dynamic_interests"

    iget-object v2, p0, Lcom/jirbo/adcolony/do;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "user_meta_data"

    iget-object v2, p0, Lcom/jirbo/adcolony/do;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "in_app_purchase"

    iget-object v2, p0, Lcom/jirbo/adcolony/do;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "session_end"

    iget-object v2, p0, Lcom/jirbo/adcolony/do;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/do;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "session_start"

    iget-object v2, p0, Lcom/jirbo/adcolony/do;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/jirbo/adcolony/cs;

    const-string/jumbo v0, "iap_cache.txt"

    invoke-direct {v1, v0}, Lcom/jirbo/adcolony/cs;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {v1}, Lcom/jirbo/adcolony/cw;->c(Lcom/jirbo/adcolony/cs;)Lcom/jirbo/adcolony/d;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_2

    .line 151
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/jirbo/adcolony/d;->h_()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 154
    new-instance v3, Lcom/jirbo/adcolony/h;

    invoke-direct {v3}, Lcom/jirbo/adcolony/h;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/jirbo/adcolony/d;->a(ILcom/jirbo/adcolony/h;)Lcom/jirbo/adcolony/h;

    move-result-object v3

    .line 155
    sget-object v4, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v4, v4, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v5, "in_app_purchase"

    invoke-virtual {v4, v5, v3}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {v1}, Lcom/jirbo/adcolony/cs;->c()V

    .line 160
    sget-object v0, Lcom/jirbo/adcolony/ba;->X:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->j()V

    .line 163
    :cond_2
    sput-boolean v6, Lcom/jirbo/adcolony/ba;->D:Z

    goto/16 :goto_0
.end method
