.class public Lcom/jirbo/adcolony/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/jirbo/adcolony/j;

.field static b:Lcom/jirbo/adcolony/j;

.field static c:Lcom/jirbo/adcolony/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/jirbo/adcolony/i;

    invoke-direct {v0}, Lcom/jirbo/adcolony/i;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->a:Lcom/jirbo/adcolony/j;

    .line 33
    new-instance v0, Lcom/jirbo/adcolony/b;

    invoke-direct {v0}, Lcom/jirbo/adcolony/b;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->b:Lcom/jirbo/adcolony/j;

    .line 34
    new-instance v0, Lcom/jirbo/adcolony/e;

    invoke-direct {v0}, Lcom/jirbo/adcolony/e;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->c:Lcom/jirbo/adcolony/j;

    return-void
.end method
