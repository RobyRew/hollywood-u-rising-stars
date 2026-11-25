.class Lcom/jirbo/adcolony/b;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/jirbo/adcolony/j;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/bu;)V
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "false"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "false"

    return-object v0
.end method
