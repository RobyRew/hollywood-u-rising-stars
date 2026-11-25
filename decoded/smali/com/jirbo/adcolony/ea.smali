.class Lcom/jirbo/adcolony/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 1

    .prologue
    .line 1109
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1116
    :goto_0
    return v0

    .line 1111
    :cond_0
    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ea;->a:Ljava/lang/String;

    .line 1112
    const-string/jumbo v0, "last_modified"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ea;->b:Ljava/lang/String;

    .line 1113
    const-string/jumbo v0, "click_action_type"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ea;->c:Ljava/lang/String;

    .line 1114
    const-string/jumbo v0, "click_action"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ea;->d:Ljava/lang/String;

    .line 1116
    const/4 v0, 0x1

    goto :goto_0
.end method
